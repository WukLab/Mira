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
#define GEN_PASS_DEF_RMEMAFFINEACCESSMEM
#include "Dialect/Transforms/Passes.h.inc"
}

using namespace mlir;
using namespace mlir::rmem;

namespace {
class AffineAccessMemInternal {
public:
  AffineAccessMemInternal(
    RemoteMemTypeLowerer &typeConverter,
    DenseMap<AffineForOp, AffineForOp> &loopNest,
    DenseMap<Operation *, Value> &remoteOps,
    DenseMap<AffineForOp, std::vector<Value>> &indVars,
    DenseMap<Value, std::tuple<int64_t, int64_t>> &indVarRange,
    DenseMap<StringRef, Value> &access_mem_base_pool, 
    DenseMap<Value, StringRef> &mem_to_catcher, 
    DenseMap<StringRef, LocalCache> &localPools,
    DenseMap<StringRef, StringRef> &catch_to_temp
  );

  void inspectAccessMemDetails();

  LocalCache &base_to_cache(Value base) {
    StringRef tname = catch_to_temp[mem_to_catcher[base]];
    return localPools[tname];
  }

  // level = 1 means the immediate parent loop
  void getAccessRangeAtLevel(RmemAccess &access, unsigned level, DenseMap<AffineForOp, std::vector<std::tuple<Value, AffineMap, uint64_t>>> &range);

  void mergeRange(DenseMap<AffineForOp, std::vector<std::tuple<Value, AffineMap, uint64_t>>> &range,
    DenseMap<AffineForOp, DenseMap<Value, std::pair<AffineMap, AffineMap>>> &fop_base_low_high, 
    DenseMap<AffineForOp, DenseMap<Value, int64_t>> &fop_base_size);

  RemoteMemTypeLowerer &typeConverter;
  // Encolsing relationship <v `is closest parent of` k>
  DenseMap<AffineForOp, AffineForOp> &loopNest;
  // loop -> all enclosing loops' induction vars
  DenseMap<AffineForOp, std::vector<Value>> &indVars;
  // all induction -> range
  DenseMap<Value, std::tuple<int64_t, int64_t>> &indVarRange;
  // remote mem access ops
  DenseMap<Operation *, RmemAccess> raccess;
  DenseMap<Value, StringRef> &mem_to_catcher;
  // All existing local cache templates
  DenseMap<StringRef, LocalCache> &localPools;
  DenseMap<StringRef, StringRef> &catch_to_temp;
};

}

namespace {
class RMEMAffineAccessMemPass : public impl::RMEMAffineAccessMemBase<RMEMAffineAccessMemPass> {
  void runOnOperation() override {
    unsigned dist = prefDist;
    if (dist == 0)
      return;
    ModuleOp mop = getOperation();
    MLIRContext *ctx = mop.getContext();
    RemoteMemTypeLowerer typeConverter(ctx);
    OpBuilder b(mop);
    auto i32t = b.getIntegerType(32);

    // populate access_mem base address catcher
    DenseMap<StringRef, Value> access_mem_base_pool;
    DenseMap<Value, StringRef> mem_to_catch;
    std::set<std::string> catch_names;
    // populate local caches
    DenseMap<StringRef, LocalCache> pools;
    DenseMap<StringRef, StringRef> catch_to_temp;
    std::set<std::string> temp_names;

    unsigned catch_id = 0;
    unsigned temp_id = 0;
    std::string catch_base_name = "ref";
    std::string tmp_base_name = "t";

    auto set_catch_attrs = [&](Operation *op, ArrayRef<std::pair<StringRef, unsigned>> name_id) {
      SmallVector<Attribute> attrs;
      for (auto [name, id] : name_id) {
        SmallVector<Attribute> c = {b.getStringAttr(name), b.getIntegerAttr(i32t, id)};
        attrs.push_back(b.getArrayAttr(c));
      }
      op->setAttr("access_mem_catcher", b.getArrayAttr(attrs));
    };

    auto gen_template = [&](unsigned tid, Value rmem, StringRef catcher) {
      std::string name = tmp_base_name + std::to_string(tid);
      auto [it, ok] = temp_names.insert(name);
      auto rmemType = rmem.getType().cast<rmem::RemoteMemRefType>();
      MemRefType memRefType = rmem::getRawTypeFromRemotedType(rmemType).cast<MemRefType>();
      size_t size = 1;
      for (auto s : memRefType.getShape()) {
        size *= s;
      }
      DataLayout DLI(mop);
      pools[*it] = LocalCache(
        CacheType::Ring_Direct,
        DLI.getTypeSize(memRefType.getElementType()), // type size, need to be updated later
        rmem,
        catcher,
        memRefType.getElementType(),
        0,
        size,    // eles
        1, // batch size in eles, update later
        1
      );
      catch_to_temp[catcher] = *it;
    };

    mop.walk([&](rmem::MemRefAllocOp op) {
      auto [it, ok] = catch_names.insert(catch_base_name + std::to_string(catch_id++));
      access_mem_base_pool[*it] = op->getResult(0);
      mem_to_catch[op->getResult(0)] = *it;
      SmallVector<std::pair<StringRef, unsigned>> catch_array;
      catch_array.push_back({*it, 0});
      set_catch_attrs(op, catch_array);

      gen_template(temp_id ++, op->getResult(0), *it);
    });

    mop.walk([&](func::FuncOp op) {
      if (!op.empty()) {
        SmallVector<std::pair<StringRef, unsigned>> catch_array;
        for (size_t i = 0; i < op.getNumArguments(); ++i) {
          auto arg = op.getArgument(i);
          if (arg.getType().isa<rmem::RemoteMemRefType>()) {
            auto [it, ok] = catch_names.insert(catch_base_name + std::to_string(catch_id++));
            access_mem_base_pool[*it] = arg;
            mem_to_catch[arg] = *it;
            catch_array.push_back({*it, i});
            gen_template(temp_id ++, arg, *it);
          }
        }
        if (!catch_array.empty()) {
          set_catch_attrs(op, catch_array);
        }
      }
    });


    // Get loops that involves remote memory access
    DenseMap<Operation *, Value> rAccess;
    // Encolsing relationship <v `is closest parent of` k>
    DenseMap<AffineForOp, AffineForOp> nest;
    DenseMap<Value, std::tuple<int64_t, int64_t>> indVarRange;

    // Populate relationship graph and constant induction range
    mop.walk([&](mlir::AffineForOp loop) {
      if (auto ploop = loop->getParentOfType<AffineForOp>())
        nest[loop] = ploop;
      else
        nest[loop] = nullptr;
      
      // get remote access
      std::vector<std::pair<Operation *, Value>> rOpAddr;
      loopGetRemoteAccess(loop, rOpAddr);
      if (!rOpAddr.empty()) {
        for (auto [op, v] : rOpAddr) {
          if (rAccess.find(op) == rAccess.end())
            rAccess[op] = v;
        }
      }
      if (loop.hasConstantBounds()) {
        int64_t lower = loop.getConstantLowerBound();
        int64_t upper = loop.getConstantUpperBound();
        int64_t s = loop.getStep();
        upper = (((upper - lower + s - 1) / s) - 1) * s + lower;
        indVarRange[loop.getInductionVar()] = {lower, upper};
      }
    });

    // Populate affine induction range that are not constant
    OpBuilder builder(mop);
    mop.walk([&](mlir::AffineForOp loop) {
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
    mop.walk([&](mlir::AffineForOp loop) {
      ind_dfs(loop, indVars, nest);
    });

    // Populate worklist
    AffineAccessMemInternal accessInternal(
      typeConverter,
      nest,
      rAccess, indVars, indVarRange,
      access_mem_base_pool,
      mem_to_catch,
      pools,
      catch_to_temp
    );
    // accessInternal.inspectAccessMemDetails();

    DenseMap<AffineForOp, std::vector<std::tuple<Value, AffineMap, uint64_t>>> range;
    for (auto [op, ra] : accessInternal.raccess) {
      accessInternal.getAccessRangeAtLevel(ra, 10, range);
    }
    DenseMap<AffineForOp, DenseMap<Value, std::pair<AffineMap, AffineMap>>> fop_base_low_high;
    DenseMap<AffineForOp, DenseMap<Value, int64_t>> fop_base_size;
    accessInternal.mergeRange(range, fop_base_low_high, fop_base_size);

    uint64_t lofst = 0;
    for (auto &[tname, cache] : pools) {
      size_t typeSize = cache.lOfst;
      cache.lOfst = lofst;
      lofst += typeSize * cache.nBlocks * cache.blockSize;
    }
    llvm::errs() << "total local cache size: " << lofst << " bytes\n";

    std::vector<NamedAttribute> temp_attrs;
    for (auto [tname, cache] : pools) {
      temp_attrs.emplace_back(b.getStringAttr(tname), cache.toAttr(b));
    }
    mop->setAttr("rmem.templates", b.getDictionaryAttr(temp_attrs));

    // set fop access mem
    // NOTE: access_mem.batch size = template.blocksize / access_mem.size
    for (auto &[fop, access_mem] : range) {
      OpBuilder b(ctx);
      SmallVector<Attribute> access_mem_attrs;
      size_t loop_batch = 0;
      for (auto [base, lh] : fop_base_low_high[fop]) {
        StringRef catcher = accessInternal.mem_to_catcher[base];
        AffineMap ofst = lh.first;
        uint64_t size = fop_base_size[fop][base];
        StringRef tname = accessInternal.catch_to_temp[catcher];
        SmallVector<Attribute> mem_attr = {
          b.getStringAttr(catcher),
          AffineMapAttr::get(ofst),
          b.getIntegerAttr(b.getI64Type(), size),
          b.getStringAttr(tname)
        };
        access_mem_attrs.push_back(b.getArrayAttr(mem_attr));

        // if batch sizes within a loop are the same, it's OK to use batch
        // to adopt inconsistent block size
        size_t cache_line_size = accessInternal.base_to_cache(base).blockSize;
        assert(cache_line_size % size == 0 && "cache line size must be multiple times of access size");
        size_t batch = cache_line_size / size;
        if (loop_batch)
          assert(loop_batch == batch && "batch within a loop must be the same");
        else
          loop_batch = batch;
      }
      fop->setAttr("pf_target", b.getI64IntegerAttr(1));
      fop->setAttr("nahead", b.getI64IntegerAttr(dist));
      fop->setAttr("batch", b.getI64IntegerAttr(loop_batch)); 
      fop->setAttr("access_mem", b.getArrayAttr(access_mem_attrs));
    }
  }
};
}

namespace {
  AffineAccessMemInternal::AffineAccessMemInternal(
    RemoteMemTypeLowerer &typeConverter,
    DenseMap<AffineForOp, AffineForOp> &loopNest,
    DenseMap<Operation *, Value> &remoteOps,
    DenseMap<AffineForOp, std::vector<Value>> &indVars,
    DenseMap<Value, std::tuple<int64_t, int64_t>> &indVarRange,
    DenseMap<StringRef, Value> &access_mem_base_pool, 
    DenseMap<Value, StringRef> &mem_to_catcher, 
    DenseMap<StringRef, LocalCache> &localPools,
    DenseMap<StringRef, StringRef> &catch_to_temp
  ): 
  typeConverter(typeConverter), 
  loopNest(loopNest),
  indVars(indVars), indVarRange(indVarRange), 
  mem_to_catcher(mem_to_catcher),
  localPools(localPools),
  catch_to_temp(catch_to_temp) {
    // Populate remote accesses within current loop
    DenseMap<Value, AffineExpr> v2Expr; // SSA value to affine expresion with induction inputs
    for (auto [op, addr] : remoteOps) {
      AffineForOp l = op->getParentOfType<AffineForOp>();
      raccess[op] = RmemAccess(op, addr, indVars[l], indVarRange, v2Expr);
    }
  }

  void AffineAccessMemInternal::inspectAccessMemDetails() {
    llvm::errs() << "--- Details of access mem --- \n";
    for (auto [op, detail] : raccess)
      detail.inspectAccess();
    llvm::errs() << "--- end ---\n";
  }

  void AffineAccessMemInternal::getAccessRangeAtLevel(RmemAccess &access, unsigned level, DenseMap<AffineForOp, std::vector<std::tuple<Value, AffineMap, uint64_t>>> &range) {
    MLIRContext *ctx = access.access->getContext();
    unsigned depth = 0;
    AffineForOp fop = access.access->getParentOfType<AffineForOp>();
    while (level > 1 && loopNest[fop]) {
      fop = this->loopNest[fop];
      level --;
      depth ++;
    }

    // prepare new map
    SmallVector<AffineExpr> low, high;
    for (uint64_t i = 0; i < access.dep_inductions.size(); ++ i) {
      if (i == 0 || i < access.dep_inductions.size() - depth) {
        low.push_back(getAffineDimExpr(i, ctx));
        high.push_back(getAffineDimExpr(i, ctx));
      }
      else {
        auto it = this->indVarRange.find(access.dep_inductions[i]);
        assert(it != indVarRange.end() && "loop induction must be statically known");
        low.push_back(getAffineConstantExpr(std::get<0>(it->second), ctx));
        high.push_back(getAffineConstantExpr(std::get<1>(it->second), ctx));
      }
    }

    AffineMap newLow = access.access_offset.replaceDimsAndSymbols(low, {}, access.access_offset.getNumDims()-depth, 0);
    AffineMap newHigh = access.access_offset.replaceDimsAndSymbols(high, {}, access.access_offset.getNumDims()-depth, 0);
    AffineMap sizeMap = simplifyAffineMap(AffineMap::get(
      std::max(newLow.getNumDims(), newHigh.getNumDims()), 0, 
      newHigh.getResult(0) - newLow.getResult(0)));
    assert(sizeMap.isSingleConstant() && "loop induction must be known");
    int64_t s = sizeMap.getSingleConstantResult() + access.size; 

    if (range.find(fop) == range.end())
      range[fop] = {};
    range[fop].push_back(std::make_tuple(access.base, newLow, s));
  }

  void AffineAccessMemInternal::mergeRange(DenseMap<AffineForOp, std::vector<std::tuple<Value, AffineMap, uint64_t>>> &range,
    DenseMap<AffineForOp, DenseMap<Value, std::pair<AffineMap, AffineMap>>> &fop_base_low_high, 
    DenseMap<AffineForOp, DenseMap<Value, int64_t>> &fop_base_size) {
    for (auto [fop, access_mems] : range) {
      // by value low high
      auto &by_base = fop_base_low_high[fop];
      MLIRContext *ctx = fop->getContext();
      for (auto [base, low, s] : access_mems) {
        if (by_base.find(base) == by_base.end()) {
          AffineExpr high = low.getResult(0) + getAffineConstantExpr(s,ctx);
          by_base[base] = std::make_pair(low, simplifyAffineMap(AffineMap::get(low.getNumDims(), 0, high)));
        }
        else {
          // merge two
          // compare low 
          auto [olow, ohigh] = by_base[base];
          AffineMap cmpLow = simplifyAffineMap(AffineMap::get(
            std::max(olow.getNumDims(), low.getNumDims()), 0, 
            low.getResult(0) - olow.getResult(0)));
          assert(cmpLow.isSingleConstant() && "must be a constant affine map to compare low");
          int64_t icmpLow = cmpLow.getSingleConstantResult();
          olow = icmpLow < 0 ? low : olow;

          // compare high
          AffineMap high = simplifyAffineMap(AffineMap::get(
            low.getNumDims(), 0,
            low.getResult(0) + getAffineConstantExpr(s, ctx)
          ));
          AffineMap cmphigh = simplifyAffineMap(AffineMap::get(
            std::max(ohigh.getNumDims(), high.getNumDims()), 0, high.getResult(0) - ohigh.getResult(0)));
          assert(cmphigh.isSingleConstant() && "must be a constant affine map to compare high");
          int64_t icmpHigh = cmphigh.getSingleConstantResult();
          ohigh = icmpHigh > 0 ? high : ohigh;

          by_base[base] = std::make_pair(olow, ohigh);
        }
      }

      // calculate size
      // size = max(high - low, induction gap)
      auto &access_size = fop_base_size[fop]; 
      for (auto [base, lh] : by_base) {
        auto [low, high] = lh;
        AffineMap sizeMap = simplifyAffineMap(AffineMap::get(
          std::max(low.getNumDims(), high.getNumDims()), 0, 
          high.getResult(0) - low.getResult(0))); 
        assert(sizeMap.isSingleConstant() && "must be a constant affine map to calculate size");
        int64_t size = sizeMap.getSingleConstantResult();

        AffineExpr low0 = low.getResult(0).replace(
          getAffineDimExpr(low.getNumDims() - 1, ctx),
          getAffineConstantExpr(0, ctx));
        AffineExpr low1 = low.getResult(0).replace(
          getAffineDimExpr(low.getNumDims() - 1, ctx),
          getAffineConstantExpr(1, ctx)); 
        AffineMap gap = simplifyAffineMap(AffineMap::get(low.getNumDims()-1, 0, low1 - low0, ctx));
        if (gap.isSingleConstant()) 
          size = std::max(size, gap.getSingleConstantResult());

        access_size[base] = size;
        // update local cache lofst and block size
        StringRef tname = catch_to_temp[mem_to_catcher[base]];
        localPools[tname].blockSize = std::max(localPools[tname].blockSize, (size_t) size);
      }
    }
  }
}

std::unique_ptr<Pass> mlir::createRemoteMemAffineAccessMemPass() {
  return std::make_unique<RMEMAffineAccessMemPass>();
}