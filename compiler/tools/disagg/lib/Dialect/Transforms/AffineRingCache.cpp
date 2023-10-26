#include "Dialect/Transforms/Passes.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "mlir/Dialect/LLVMIR/LLVMDialect.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Dialect/SCF/IR/SCF.h"
#include "mlir/Dialect/Affine/IR/AffineOps.h"
#include "mlir/Dialect/Vector/IR/VectorOps.h"
#include "mlir/IR/BuiltinOps.h"
#include "mlir/IR/Operation.h"
#include "mlir/IR/BlockAndValueMapping.h"
#include "mlir/Pass/Pass.h"
#include "Dialect/RemoteMem.h"
#include "Dialect/FunctionUtils.h"
#include "Dialect/WorkloadAnalysis.h"
#include "Lowering/Common/RMemTypeLowerer.h"
#include "llvm/Support/TypeName.h"
#include "mlir/IR/PatternMatch.h"
#include "mlir/Transforms/GreedyPatternRewriteDriver.h"
#include "mlir/Support/MathExtras.h"
#include "Dialect/Transforms/AffineCommon.h"
#include <set>
#include <vector>
#include <tuple>

namespace mlir {
#define GEN_PASS_DEF_RMEMAFFINERINGCACHE
#include "Dialect/Transforms/Passes.h.inc"
}


using namespace mlir;
using namespace mlir::rmem;


namespace {

class AffineForPrefetchInternal {
public:
  AffineForPrefetchInternal(
    AffineForOp loop, 
    RemoteMemTypeLowerer &typeConverter, 
    DenseMap<AffineForOp, std::vector<Value>> &indVars,
    DenseMap<Value, std::tuple<int64_t, int64_t>> &indVarRange,
    DenseMap<StringRef, Value> &access_mem_base_pool, 
    DenseMap<StringRef, LocalCache> &localPools,
    AffineForOp outmost);
  void inspectPrefetchDetails();
  Type getBatchedMemType(MemoryRegion mem);
  AffineApplyOp getRecoverMap();
  void emitOperatorKernel();
  void emitRuntimeKernel();

  AffineForOp loop;
  OpBuilder b;
  RemoteMemTypeLowerer &typeConverter;

  // access mem
  uint64_t batch;
  uint64_t nahead;
  std::vector<MemoryRegion> staticAccessMem;
  std::vector<MemoryRegion> nonStaticAccessMem;

  // loop -> all enclosing loops' induction vars
  DenseMap<AffineForOp, std::vector<Value>> &indVars;
  // all induction -> range
  DenseMap<Value, std::tuple<int64_t, int64_t>> &indVarRange;
  // remote mem access ops
  DenseMap<Operation *, RmemAccess> raccess;
  // remote mem access -> available access mem
  DenseMap<Operation *, std::tuple<bool, size_t, AffineMap>> raccess_2_mem;

  // All existing local cache templates
  DenseMap<StringRef, LocalCache> localPools;

  AffineForOp outerLoop;
  AffineForOp innterLoop;
};
}

namespace {
/* helpers */

// obtain the outermost loop of the current loop
// if it's already outmost, return itself
AffineForOp getOutMost(AffineForOp op, DenseMap<AffineForOp, AffineForOp> &m, DenseMap<AffineForOp, AffineForOp> &nest) {
  if (m.find(op) == m.end()) {
    if (auto ploop = nest[op]) {
      getOutMost(ploop, m, nest);
      m[op] = m[ploop];
    } else
      m[op] = op;
  }
  return m[op];
}

class RMEMAffineRingCache : public impl::RMEMAffineRingCacheBase <RMEMAffineRingCache> {

  void runOnOperation() override {
    unsigned olevel = outputLevel;
    ModuleOp op = getOperation();
    MLIRContext *ctx = op.getContext();
    RemoteMemTypeLowerer typeConverter(ctx);
    OpBuilder builder(op);

    // populate access_mem base address catcher
    // now assume the baseaddress is the 
    DenseMap<StringRef, Value> access_mem_base_pool;
    op.walk([&](mlir::Operation *op) {
      if (auto catchers = op->getAttrOfType<ArrayAttr>("access_mem_catcher")) {
        for (auto attr : catchers) {
          auto catcher = attr.cast<ArrayAttr>();
          StringRef name = catcher[0].cast<StringAttr>().getValue();
          uint64_t i = catcher[1].cast<IntegerAttr>().getValue().getZExtValue();
          if (auto fop = dyn_cast<func::FuncOp>(op))
            access_mem_base_pool[name] = fop.getArgument(i);
          else
            access_mem_base_pool[name] = op->getResult(i);
        }
      }
    });

    // populate existing local caches
    DenseMap<StringRef, LocalCache> pools;
    if (auto ts = op->getAttrOfType<DictionaryAttr>("rmem.templates")) {
      for (auto p : ts) {
        pools[p.getName().getValue()] = LocalCache(p.getValue().cast<ArrayAttr>(), access_mem_base_pool);
      }
    }

    // Populate target loops
    std::vector<AffineForOp> loops;
    // Encolsing relationship <v `is closest parent of` k>
    DenseMap<AffineForOp, AffineForOp> nest;
    DenseMap<Value, std::tuple<int64_t, int64_t>> indVarRange;

    // Populate relationship graph and constant induction range
    op.walk([&](mlir::AffineForOp loop) {
      if (auto ploop = loop->getParentOfType<AffineForOp>())
        nest[loop] = ploop;
      else
        nest[loop] = nullptr;
      if (auto attr = loop->getAttrOfType<IntegerAttr>("pf_target")) {
        uint64_t num_targets = attr.getValue().getZExtValue();
        // llvm::errs() << num_targets << "\n";
        if (num_targets != 0)
          loops.push_back(loop);
      }
      if (loop.hasConstantBounds()) {
        int64_t lower = loop.getConstantLowerBound();
        int64_t upper = loop.getConstantUpperBound();
        int64_t s = loop.getStep();
        upper = (((upper - lower + s - 1) / s) - 1) * s + lower;
        indVarRange[loop.getInductionVar()] = {lower, upper};
      }
    });

    // Populate affine induction range
    op.walk([&](mlir::AffineForOp loop) {
      if (loop.hasConstantBounds())
        return WalkResult::advance();

      int64_t lower = -1, upper = -1;

      // get lower bound
      if (loop.hasConstantLowerBound())
        lower = loop.getConstantLowerBound();
      else {
        AffineMap minMap = loop.getLowerBoundMap();
        SmallVector<Attribute, 1> lowInput;
        for (auto opd : loop.getLowerBoundOperands()) {
          if (indVarRange.find(opd) != indVarRange.end())
            lowInput.push_back(builder.getIndexAttr(std::get<0>(indVarRange[opd])));
        }
        if (lowInput.size() == minMap.getNumInputs()) {
          SmallVector<Attribute, 1> lowRel;
          if (minMap.constantFold(lowInput, lowRel).succeeded())
            lower = lowRel[0].cast<IntegerAttr>().getValue().getSExtValue();
        }
      }

      // get upper bound
      if (loop.hasConstantUpperBound())
        upper = loop.getConstantUpperBound();
      else {
        AffineMap maxMap = loop.getUpperBoundMap();
        SmallVector<Attribute, 1> highInput;
        for (auto opd : loop.getUpperBoundOperands()) {
          if (indVarRange.find(opd) != indVarRange.end())
            highInput.push_back(builder.getIndexAttr(std::get<1>(indVarRange[opd])));
        }
        if (highInput.size() == maxMap.getNumInputs()) {
          SmallVector<Attribute, 1> highRel;
          if (maxMap.constantFold(highInput, highRel).succeeded())
            upper = highRel[0].cast<IntegerAttr>().getValue().getSExtValue();
        }
      }

      int64_t s = loop.getStep();
      upper = (((upper - lower + s - 1) / s) - 1) * s + lower;
      indVarRange[loop.getInductionVar()] = {lower, upper}; 
      return WalkResult::advance();
    });

    // Populate enclosing induction var map
    DenseMap<AffineForOp, std::vector<Value>> indVars;
    op.walk([&](mlir::AffineForOp loop) {
      ind_dfs(loop, indVars, nest);
    });

    // Populate worklist
    DenseMap<AffineForOp, AffineForOp> outmosts;
    std::vector<AffineForPrefetchInternal> workList;
    for (auto loop : loops) {
      // Get all depending induction variables
      AffineForOp outmost = getOutMost(loop, outmosts, nest);
      workList.emplace_back(
        loop, typeConverter, 
        indVars, indVarRange, 
        access_mem_base_pool, 
        pools,
        outmost);
    }

    for (auto w : workList) {
      if (debug)
        w.inspectPrefetchDetails();
      w.emitOperatorKernel();
    }

    if (olevel > 0) {
      for (auto w : workList) {
        // w.inspectPrefetchDetails();
        w.emitRuntimeKernel();
      }
    }
  }
};
}

/* Class Definitions */
namespace {

AffineForPrefetchInternal::AffineForPrefetchInternal(
  AffineForOp loop, 
  RemoteMemTypeLowerer &typeConverter, 
  DenseMap<AffineForOp, std::vector<Value>> &indVars,
  DenseMap<Value, std::tuple<int64_t, int64_t>> &indVarRange,
  DenseMap<StringRef, Value> &access_mem_base_pool, 
  DenseMap<StringRef, LocalCache> &localPools,
  AffineForOp outmost):
  loop(loop), b(loop), typeConverter(typeConverter), 
  indVars(indVars), indVarRange(indVarRange), localPools(localPools) {
    // Extract batch for all remote mem access
    batch = loop->getAttrOfType<mlir::IntegerAttr>("batch").getValue().getZExtValue();

    // Extract prefetch batch size
    nahead = loop->getAttrOfType<mlir::IntegerAttr>("nahead").getValue().getZExtValue();

    // Initialize memory regions
    for (auto accm_attrs : loop->getAttrOfType<mlir::ArrayAttr>("access_mem")) {
      auto attrs = accm_attrs.cast<mlir::ArrayAttr>();
      StringRef name = attrs[0].cast<mlir::StringAttr>().getValue();
      AffineMap map = attrs[1].cast<mlir::AffineMapAttr>().getValue();
      uint64_t msize = attrs[2].cast<mlir::IntegerAttr>().getValue().getZExtValue();
      StringRef poolRef = attrs[3].cast<mlir::StringAttr>().getValue();

      assert(access_mem_base_pool.find(name) != access_mem_base_pool.end() && "Cannot find name in the pool created by the access_mem_catcher");
      Value base_addr = access_mem_base_pool[name];

      // search existing local pools, add one if cannot accomodate current access mem
      MemoryRegion mem(base_addr, name, map, msize, !map.isFunctionOfDim(indVars[loop].size()-1), indVars[loop], indVarRange);
      mem.fromPool = poolRef;
      if (mem.only_oneD)
        staticAccessMem.push_back(mem);
      else
        nonStaticAccessMem.push_back(mem);
    }

    // set relative positon of access_mem in loop iter args
    // Ord:
    // [h, t, oneD1, oneDN, ..., non-oneD1, non-oneDN]
    {
      size_t ord = 2;
      for (auto &mem : staticAccessMem) {
        if (mem.only_oneD)
          mem.index_in_iterargs = (ord ++);
      }
      for (auto &mem : nonStaticAccessMem) {
        if (!mem.only_oneD)
          mem.index_in_iterargs = (ord ++);
      }
    }

    // TODO have a transform to assign local pools
    // now manual assign
#if 0
    for (auto &mem : access_mem) {
      bool ok = false;
      for (auto &[name, cache] : localPools) {
        if (mem.canUsePoolForThis(cache, batch)) {
          mem.fromPool = name;
          ok = true;
          break;
        }
      }
      if (!ok) {
        mem.createNewCache(batch, localPools, typeConverter);
      }
    }

    // set to module attribute 
    {
      ModuleOp mop = loop->getParentOfType<ModuleOp>();
      SmallVector<NamedAttribute, 4> pools;
      for (auto &[name, cache] : localPools ) {
        pools.emplace_back(b.getStringAttr(name), cache.toAttr(b));
      }
      mop->setAttr("rmem.templates", b.getDictionaryAttr(pools));
    }
#endif

    // Populate remote accesses within current loop
    //
    DenseMap<Value, AffineExpr> v2Expr;
    std::vector<std::pair<Operation *, Value>> rAccess;
    loopGetRemoteAccess(loop, rAccess);

    assert(!rAccess.empty() && "prefetch target loop should have remote memory access");

    for (auto [op, addr] : rAccess) {
      AffineForOp l = op->getParentOfType<AffineForOp>();
      raccess[op] = RmemAccess(op, addr, indVars[l], indVarRange, v2Expr);
      for (size_t mi = 0; mi < staticAccessMem.size(); ++ mi) {
        auto [use, map] = raccess[op].canUseRegionForThis(staticAccessMem[mi]);
        if (use) {
          raccess_2_mem[op] = {true, mi, map};
          staticAccessMem[mi].t = staticAccessMem[mi].t | raccess[op].t;
          break;
        }
      }
      for (size_t mi = 0; mi < nonStaticAccessMem.size(); ++ mi) {
        auto [use, map] = raccess[op].canUseRegionForThis(nonStaticAccessMem[mi]);
        if (use) {
          raccess_2_mem[op] = {false, mi, map};
          nonStaticAccessMem[mi].t = nonStaticAccessMem[mi].t | raccess[op].t;
          break;
        }
      }
    }
  }

void AffineForPrefetchInternal::inspectPrefetchDetails() {
  llvm::errs() << "--- Details of loop prefetch --- \n";
  loop->dump();
  llvm::errs() << "batch: " << batch << "\n";
  llvm::errs() << "nahead: " << nahead << "\n";
  llvm::errs() << "num indvars: " << indVars[loop].size() << "\n";
  llvm::errs() << "static access mems: \n";
  for (auto m : staticAccessMem)
    m.inspectRegion();
  llvm::errs() << "non-static access mems: \n";
  for (auto m : nonStaticAccessMem)
    m.inspectRegion();
  for (auto [op, detail] : raccess)
    detail.inspectAccess();
  llvm::errs() << "--- end ---\n";
}

Type AffineForPrefetchInternal::getBatchedMemType(MemoryRegion mem) {
  Type eleType = rmem::getEleTypeFromRemoteMemRef(mem.baseAddr.getType().cast<RemoteMemRefType>());
  Type rawEleType = typeConverter.convertType(eleType);
  Type relType;
  if (mem.only_oneD) {
    relType = MemRefType::get({(int64_t)mem.sizeInEle}, rawEleType);
  }
  else {
    relType = MemRefType::get({(int64_t)batch, (int64_t)mem.sizeInEle}, rawEleType);
  }
  return relType;
}

AffineApplyOp AffineForPrefetchInternal::getRecoverMap() {
  MLIRContext *ctx = b.getContext();
  Location loc = innterLoop.getLoc();
  // outer 0, inner 1
  AffineExpr expr = getAffineDimExpr(1, ctx) * getAffineConstantExpr(loop.getStep(), ctx) + getAffineDimExpr(0, ctx);
  AffineMap map = AffineMap::get(2, 0, expr);
  SmallVector<Value> input = {outerLoop.getInductionVar(), innterLoop.getInductionVar()};
  auto recover = b.create<AffineApplyOp>(loc, 
    map, input
  );
  return recover;
}

void AffineForPrefetchInternal::emitOperatorKernel() {
  // generated loop in high level:
  // alloca h, t
// prologue:
  // static_mem = current-loop-independent access mem prefetch
  // for n_prefetch:
    // non_stat_mem += current-loop-dependent access mem prefetch
  // sync-static-mem
  // iter_args = [h, t, static_mem, non_static_mem]
// 
// outerloop (iter_args):
  // new-non-static-mem = prefetch
  // innerloop:
    // sync-non-static-prefetch
    // original inner loops
  // innerloop-end
  // non-static-write-back
  // sync-non-static-write-back
  // new-iter-args = [h+1, t+1, static_mem, new-non-static-mem]
  // outer-yield new-iter-args
// outerloop-end
// 
  // sync-static-write-back

  Location loc = loop.getLoc();
  // Emit prologues
  int64_t low = loop.getConstantLowerBound();
  b.setInsertionPoint(loop);
  Value cst0_64 = b.create<arith::ConstantIntOp>(loc, 0, 64);
  Value cst0_index = b.create<arith::ConstantIndexOp>(loc, 0);
  Value cst1_index = b.create<arith::ConstantIndexOp>(loc, 1);

  // helper to make rdma with indent curInd and base mem
  auto rdmaWithCurInd = [&](MemoryRegion mem, Value localIndex, Value curInd, ibv_wr_opcode t, Value wrid) -> rmem::AsyncRDMAOp {
    // prepare prefetch operands
    AffineMap map = mem.map;
    const auto &inductions = indVars[loop];
    assert(map.getNumInputs() == inductions.size() && "access_mem affine map input size does not match with current depending induction vars");

    std::vector<Value> affineInputs(
      inductions.begin(), inductions.begin() + inductions.size() - 1);
    affineInputs.push_back(curInd);

    Type relType = getBatchedMemType(mem);
    Value fetchSize;
    if (mem.only_oneD) {
      fetchSize = b.create<arith::ConstantIndexOp>(loc, mem.sizeInEle);
    }
    else {
      fetchSize = b.create<arith::ConstantIndexOp>(loc, mem.sizeInEle * batch);
    }

    // issue prefetch
    auto pf = b.create<rmem::AsyncRDMAOp>(loc, 
      relType,
      b.getStringAttr(mem.fromPool),
      localIndex,
      mem.baseAddr,
      affineInputs,
      AffineMapAttr::get(map),
      fetchSize,
      b.getI32IntegerAttr(static_cast<int>(t)),
      wrid
    );
    // pf->setAttr("from_pool", b.getStringAttr(mem.fromPool));
    return pf;
  };

  // helper to prefetch mem and return wrids
  // use cst0_index for the rest wrid
  // The returned wrids will be empty if
  // all mem access is write only
  auto prefetchMem = [&](
    std::vector<MemoryRegion> &access_mem, 
    Value localIndex, 
    Value curInduction, 
    std::vector<Value> &localMem) -> SmallVector<Value> {
    SmallVector<Value> wrids;
    for (size_t mi = 0; mi < access_mem.size(); ++mi) {
      auto &mem = access_mem[mi];
      if (mem.t == READ_ONLY || mem.t == READ_AND_WRITE) {
        // Value wrid;
        // if (mi == access_mem.size() - 1)
        //   wrid = b.create<rmem::GetWRIDOp>(loc, b.getIndexType());
        // else
        //   wrid = cst0_index;
        Value wrid = b.create<rmem::GetWRIDOp>(loc, b.getIndexType());
        Value lm = rdmaWithCurInd(mem, localIndex, curInduction, IBV_WR_RDMA_READ, wrid).getResult();
        localMem.push_back(lm); 
        wrids.push_back(wrid);
      } else {
        localMem.push_back(b.create<rmem::GetSlotOp>(loc, getBatchedMemType(mem), b.getStringAttr(mem.fromPool), localIndex));
      }
    }
    return wrids;
  };

  auto writeBack = [&](
    std::vector<MemoryRegion> &access_mem, 
    Value localIndex, 
    Value curInduction, 
    SmallVector<Value> &wrids) -> void {
    for (size_t mi = 0; mi < access_mem.size(); ++mi) {
      auto &mem = access_mem[mi];
      if (mem.t == WRITE_ONLY || mem.t == READ_AND_WRITE) {
        Value wrid;
        if (mi == access_mem.size() - 1)
          wrid = b.create<rmem::GetWRIDOp>(loc, b.getIndexType());
        else
          wrid = cst0_index;
        rdmaWithCurInd(mem, localIndex, curInduction, IBV_WR_RDMA_WRITE, wrid).getResult();
        wrids.push_back(wrid);
      }
    }
  };

  // Prepare wrid waiter r
  Value rPtr = b.create<LLVM::AllocaOp>(loc, 
    LLVM::LLVMPointerType::get(b.getI64Type()),
    b.create<arith::ConstantIntOp>(loc, 1, 64),
    0
  );
  b.create<LLVM::StoreOp>(loc, 
    cst0_64, rPtr
  );

  // Prepare wrid waiter s
  Value sPtr = b.create<LLVM::AllocaOp>(loc, 
    LLVM::LLVMPointerType::get(b.getI64Type()),
    b.create<arith::ConstantIntOp>(loc, 1, 64),
    0
  );
  b.create<LLVM::StoreOp>(loc, 
    cst0_64, sPtr
  );

  /*
  make prologue prefetches
  result values: [
    h, t,
    static non-induction depending access memory
    head 1: [access_mem1, access_mem2, ...,] + Optional wrid1
    ...
    head n: [access_mem1, access_mem2, ...,] + Optional wridn
  ]
  the order will be organized so that memory access not depend on
  the target loop will come first
  */
  Operation *afterPrologue;
  std::vector<Value> prologues; 
  // insert ht
  prologues.push_back(b.create<arith::ConstantIndexOp>(loc, nahead));
  prologues.push_back(cst0_index);

  // static
  Value ind_static = b.create<arith::ConstantIndexOp>(loc, low);
  SmallVector<Value> staticSyncID = prefetchMem(staticAccessMem, cst0_index, ind_static, prologues);
  afterPrologue = prologues.back().getDefiningOp();

  // non-static
  bool nonStaticOnlyWrite = true;
  if (!nonStaticAccessMem.empty()) {
    for (uint64_t h = 0; h < nahead; ++ h) {
      mlir::Value curInd = b.create<arith::ConstantIndexOp>(loc, low + h * batch * loop.getStep());
      Value prefIndex = b.create<arith::ConstantIndexOp>(loc, h);
      SmallVector<Value> nStaticSyncID = prefetchMem(nonStaticAccessMem, prefIndex, curInd, prologues);
      afterPrologue = prologues.back().getDefiningOp();
      if (!nStaticSyncID.empty()) {
        nonStaticOnlyWrite = false;
        prologues.push_back(nStaticSyncID.back());
      }
    }
  }

  // sync static mem
  if (!staticSyncID.empty()) {
    auto statcSync = b.create<rmem::WaitReqOp>(loc, 
      rPtr,
      staticSyncID.back()
    );
    afterPrologue = statcSync;
  }

  {
    // wb static mem if any
    SmallVector<Value> staticWBIDs;
    writeBack(staticAccessMem, cst0_index, ind_static, staticWBIDs);
    if (!staticWBIDs.empty())
      b.create<rmem::WaitReqOp>(loc, sPtr, staticWBIDs.back());
  }

  // Emit outer loop
  b.setInsertionPointAfter(afterPrologue);
  outerLoop = b.create<AffineForOp>(loc, 
    loop.getLowerBoundOperands(),
    loop.getLowerBoundMap(),
    loop.getUpperBoundOperands(),
    loop.getUpperBoundMap(),
    loop.getStep() * batch,
    prologues
  );
  b.setInsertionPointToStart(outerLoop.getBody());
  auto pfs = outerLoop.getRegionIterArgs();
  size_t num_access_mem = staticAccessMem.size() + nonStaticAccessMem.size();

  // get h, t, static local mem and non static local mem
  // for the current iter
  std::vector<Value> currentIter(pfs.begin(), pfs.begin() + 2 + num_access_mem);
  // next iter prefetched ht
  std::vector<Value> nextIter;
  Value nexth = b.create<arith::AddIOp>(loc, cst1_index, currentIter[0]);
  Value nextt = b.create<arith::AddIOp>(loc, cst1_index, currentIter[1]);
  nextIter.push_back(nexth);
  nextIter.push_back(nextt);

  // next iter [h, t, static mems]
  Operation *afterPrefetch = nullptr;
  nextIter.insert(nextIter.end(), pfs.begin() + 2, pfs.begin() + 2 + staticAccessMem.size());
  if (nonStaticAccessMem.size()) {
    // next iter [h, t, static mems, non-static mems prefethed]
    if (nonStaticOnlyWrite)
      nextIter.insert(nextIter.end(), pfs.begin() + 2 + num_access_mem, pfs.end());
    else
      nextIter.insert(nextIter.end(), pfs.begin() + 2 + num_access_mem + 1, pfs.end());

    // prefetch in loop body
    // next iter [h, t, static mems, non-static mems prefethed, newly prefethed]
    int64_t step = outerLoop.getStep();
    mlir::Value prefInd = b.create<arith::AddIOp>(loc, 
      b.create<arith::ConstantIndexOp>(loc, nahead * step),
      outerLoop.getInductionVar()
    );
    SmallVector<Value> prefSyncId = prefetchMem(nonStaticAccessMem, currentIter[0], prefInd, nextIter);
    afterPrefetch = nextIter.back().getDefiningOp();
    if (!prefSyncId.empty()) {
      nextIter.push_back(prefSyncId.back());
      // also indicate that prologues also has prefetches
      // sync previous fetch
      auto inLoopSync = b.create<rmem::WaitReqOp>(loc, 
        rPtr,
        *(pfs.begin() + 2 + num_access_mem)
      );
      afterPrefetch = inLoopSync;
    }
  }

  // writeback non-static if any
  {
    SmallVector<Value> nStaticWBIDs;
    writeBack(nonStaticAccessMem, currentIter[1], outerLoop.getInductionVar(), nStaticWBIDs);
    if (!nStaticWBIDs.empty())
      b.create<rmem::WaitReqOp>(loc, sPtr, nStaticWBIDs.back());
  }

  // yield next iter
  auto outerYield = b.create<AffineYieldOp>(loc, nextIter);
  // insertion point will be set before 
  // 1. Yield op 
  // 2. the first write back op
  b.setInsertionPoint(outerYield);

  // Emit inner loop
  if (afterPrefetch)
    b.setInsertionPointAfter(afterPrefetch);

  innterLoop = b.create<AffineForOp>(loc, 
    0, batch, 1
  );

  // Save before takebody
  Value oldInd = loop.getInductionVar();
  innterLoop.getBodyRegion().takeBody(loop.getBodyRegion());
  // innterLoop.dump();

  // transform all old inuction (now new inner loop induction) to reconstructed induction 
  b.setInsertionPointToStart(innterLoop.getBody());
  // construct affine map that recover the original induction var

  AffineApplyOp recover = this->getRecoverMap();
  innterLoop.getInductionVar().replaceAllUsesExcept(recover.getResult(), recover);

  // regenerate access operations
  for (auto [op, access] : raccess) {
    if (raccess_2_mem.find(op) != raccess_2_mem.end()) {
      // check if within any access_mem
      auto [s, mi, new_map] = raccess_2_mem[op];
      MemoryRegion &mem = s ? staticAccessMem[mi] : nonStaticAccessMem[mi];
      access.replaceWithNewMem(
        currentIter[mem.index_in_iterargs], 
        innterLoop.getInductionVar(), 
        oldInd, 
        new_map, 
        mem.only_oneD);
    }
  }
  loop.erase();
}

void AffineForPrefetchInternal::emitRuntimeKernel() {
  // convert rmem template to runtime function calls

}

}


std::unique_ptr<Pass> mlir::createRemoteMemAffineRingCachePass() {
  return std::make_unique<RMEMAffineRingCache>();
}