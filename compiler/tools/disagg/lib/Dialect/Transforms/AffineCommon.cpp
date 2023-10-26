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
namespace rmem {

AffineMap getIndices(Operation *op, SmallVector<Value> &opds) {
  if (auto affineLoad = dyn_cast<RAffineLoadOp>(op))
    opds.append(affineLoad.getIndices().begin(), affineLoad.getIndices().end());
  else if (auto affineStore = dyn_cast<RAffineStoreOp>(op)) 
    opds.append(affineStore.getIndices().begin(), affineStore.getIndices().end());
  else if (auto vecLoad = dyn_cast<rmem::VectorLoadOp>(op))
    opds.append(vecLoad.getIndices().begin(), vecLoad.getIndices().end());
  else if (auto vecStore = dyn_cast<rmem::VectorStoreOp>(op))
    opds.append(vecStore.getIndices().begin(), vecStore.getIndices().end());
  else if (auto memrefLoad = dyn_cast<rmem::MemRefLoadOp>(op))
    opds.append(memrefLoad.getIndices().begin(), memrefLoad.getIndices().end());
  else if (auto memrefStore = dyn_cast<rmem::MemRefStoreOp>(op))
    opds.append(memrefStore.getIndices().begin(), memrefStore.getIndices().end());
  else {
    llvm::errs() << "cannot get indice of \n";
    op->dump();
    llvm_unreachable("update getIndices function");
  }
  if (auto mapAttr = op->getAttrOfType<AffineMapAttr>("map")) {
    return mapAttr.getValue();
  }
  return AffineMap::getMultiDimIdentityMap(opds.size(), op->getContext());
}

void loopGetRemoteAccess(AffineForOp loop, std::vector<std::pair<Operation *, Value>> &rAccess) {
  loop.walk([&](mlir::Operation *op){
    auto [isRemote, addr] = rmem::isRemoteAccess(op);
    if (isRemote) {
      rAccess.push_back({op, addr});
    }
  });
}

void ind_dfs(AffineForOp op, 
              DenseMap<AffineForOp, std::vector<Value>> &indVars, 
              DenseMap<AffineForOp, AffineForOp> &nest) {
  if (indVars.find(op) != indVars.end())
    return;

  if (auto ploop = nest[op]) {
    ind_dfs(ploop, indVars, nest);
    std::vector<Value> curIndVars(indVars[ploop]);
    curIndVars.push_back(op.getInductionVar());
    indVars[op] = curIndVars;
  } else {
    indVars[op] = {op.getInductionVar()};
  }
}

MemoryRegion::MemoryRegion(Value base, StringRef baseSym, AffineMap map, uint64_t s, bool only_oneD,
    const std::vector<Value> dep_inductions, 
    DenseMap<Value, std::tuple<int64_t, int64_t>> &indVarRange):
    baseAddr(base), map(map), sizeInEle(s), only_oneD(only_oneD), dep_inductions(dep_inductions), index_in_iterargs(0), baseSym(baseSym) {
  OpBuilder b(base.getContext());
  for (auto v : dep_inductions) {
    int64_t l = -1, h = -1;
    if (indVarRange.find(v) != indVarRange.end()) {
      l = std::get<0>(indVarRange[v]);
      h = std::get<1>(indVarRange[v]);
    }
    low_indvars.push_back(b.getIndexAttr(l));
    high_indvars.push_back(b.getIndexAttr(h));
  }
  t = access_type::NO_EFFECT;
}

void MemoryRegion::inspectRegion() {
  llvm::errs() << "-- region --\n";
  llvm::errs() << "base: ";
  baseAddr.dump();
  llvm::errs() << "sizeInEle: " << sizeInEle << "\n";
  llvm::errs() << "not depending on the last induction: " << only_oneD << "\n";
  llvm::errs() << "map: ";
  map.dump();
  llvm::errs() << "ind ranges: \n";
  for (size_t i = 0; i < low_indvars.size(); ++ i)
    llvm::errs() << i << "[" << low_indvars[i] << ", " << high_indvars[i] << "]\n";
  llvm::errs() << "use pool: " << fromPool << "\n";
  llvm::errs() << "type: " << t << "\n";
}

// not used now
bool MemoryRegion::canUsePoolForThis(const LocalCache &cache, uint64_t batch) {
  return false;
  if (cache.rbase != baseAddr)
    return false;
  size_t reqSize = only_oneD ? sizeInEle : sizeInEle * batch;
  if (cache.blockSize != reqSize)
    return false;

  // 0 <=
  //   mem.offset(base) - cache.roffset(base)
  // <= cache.rsize - mem.size
  AffineExpr trace = map.getResult(0) - getAffineConstantExpr(cache.rOfst, baseAddr.getContext());
  AffineMap m = AffineMap::get(map.getNumDims(), 0, trace);
  AffineMap sm = simplifyAffineMap(m);

  // compute lower bound
  SmallVector<Attribute, 1> lowRel;
  if (sm.constantFold(low_indvars, lowRel).failed()) 
    return false;
  auto lowc = lowRel[0].cast<IntegerAttr>().getValue();
  // llvm::errs() << lowc.getSExtValue() << "\n";
  if (lowc.slt(0))
    return false;

  // compute upper bound
  // if cache represents the whole continuous memory start from base
  // return usable
  if (cache.rSize == -1)
    return true;

  SmallVector<Attribute, 1> highRel;
  if (sm.constantFold(high_indvars, highRel).failed()) 
    return false;
  auto highc = highRel[0].cast<IntegerAttr>().getValue();
  // llvm::errs() << highc.getSExtValue() << "\n";
  if (highc.sgt(cache.rSize - sizeInEle))
    return false;
  return true;
}

void MemoryRegion::createNewCache(uint64_t batch, DenseMap<StringRef, LocalCache> &localPools, RemoteMemTypeLowerer &typeConverter) {
  // get lower bound and upper bound
  int64_t low = 0, high = -1;
  SmallVector<Attribute, 1> lowRel;
  if (map.constantFold(low_indvars, lowRel).succeeded()) 
    low = std::max(lowRel[0].cast<IntegerAttr>().getValue().getSExtValue(), low);
  SmallVector<Attribute, 1> highRel;
  if (map.constantFold(high_indvars, highRel).succeeded()) 
    high = std::max(highRel[0].cast<IntegerAttr>().getValue().getSExtValue(), high);

  unsigned t = 0;
  for (; t < INT_MAX; ++ t) {
    std::string cacheRef("t" + std::to_string(t));
    if (localPools.find(cacheRef) != localPools.end())
      continue;

    Type eleType = rmem::getEleTypeFromRemoteMemRef(baseAddr.getType().cast<RemoteMemRefType>());
    Type rawEleType = typeConverter.convertType(eleType);
    int64_t blockSize = sizeInEle;
    if (!only_oneD)
      blockSize *= batch;
    int64_t rSize = high == -1 ? -1 : high - low + sizeInEle;
    auto cache = LocalCache(CacheType::Ring_Direct, 0, baseAddr, baseSym, rawEleType, low, rSize, blockSize, 0);
    fromPool = cacheRef;
    localPools[fromPool] = cache;
    break;
  }
  if (t == INT_MAX)
    llvm_unreachable("Cannot name a new local cache anymore");
}


RmemAccess::RmemAccess(Operation *op, Value base, 
    const std::vector<Value> &available_inductions,
    DenseMap<Value, std::tuple<int64_t, int64_t>> &indVarRange,
    DenseMap<Value, AffineExpr> &v2Expr):
  access(op), base(base), dep_inductions(available_inductions) {
  if (isa<rmem::RAffineLoadOp, rmem::VectorLoadOp, rmem::MemRefLoadOp, rmem::LoadOp>(op))
    t = READ_ONLY;
  else if (isa<rmem::RAffineStoreOp, rmem::VectorStoreOp, rmem::MemRefStoreOp, rmem::StoreOp>(op))
    t = WRITE_ONLY;
  else
    t = READ_AND_WRITE;

  DenseMap<Value, int64_t> inductions;
  for (size_t i = 0; i < available_inductions.size(); ++ i)
    inductions[available_inductions[i]] = (int64_t)i;

  auto [s, m] = getAccessRange(inductions, indVarRange, v2Expr);
  access_offset = m;
  size = s;

  // populate induction var ranges
  OpBuilder b(access);
  for (auto v : dep_inductions) {
    int64_t l = -1, h = -1;
    if (indVarRange.find(v) != indVarRange.end()) {
      l = std::get<0>(indVarRange[v]);
      h = std::get<1>(indVarRange[v]);
    }
    low_indvars.push_back(b.getIndexAttr(l));
    high_indvars.push_back(b.getIndexAttr(h));
  }
}

void RmemAccess::inspectAccess() {
  llvm::errs() << "-- access --\n";
  access->dump();
  llvm::errs() << "type: " << t << "\n";
  llvm::errs() << "access range: \n";
  access_offset.dump();
  llvm::errs() << " + " << size << "\n";
  llvm::errs() << "ind ranges: \n";
  for (size_t i = 0; i < low_indvars.size(); ++ i)
    llvm::errs() << i << "[" << low_indvars[i] << ", " << high_indvars[i] << "]\n";
}

// TODO: infer affine from remote access operation
static AffineExpr offset_dfs(Value v, 
    const DenseMap<Value, int64_t> &inductions,
    DenseMap<Value, AffineExpr> &v2Expr) {
  if (v2Expr.find(v) != v2Expr.end())
    return v2Expr[v];

  AffineExpr expr = nullptr;

  Operation *op = v.getDefiningOp();
  if (!op) {
    // if is loop induction variable
    if (inductions.find(v) != inductions.end()) {
      expr = getAffineDimExpr(inductions.lookup(v), v.getContext());
    } else {
      v.dump();
      return AffineExpr();
    }
  } else {
    // if constant index
    if (auto cst = dyn_cast<arith::ConstantIndexOp>(op)) {
      expr = getAffineConstantExpr(cst.value(), op->getContext());
    }

    // if arith & affinable
    if (auto add = dyn_cast<arith::AddIOp>(op)) {
      AffineExpr lhs = offset_dfs(add.getLhs(), inductions, v2Expr);
      AffineExpr rhs = offset_dfs(add.getRhs(), inductions, v2Expr);
      expr = getAffineBinaryOpExpr(AffineExprKind::Add, lhs, rhs);
    }

    if (auto sub = dyn_cast<arith::MulIOp>(op)) {
      AffineExpr lhs = offset_dfs(sub.getLhs(), inductions, v2Expr);
      AffineExpr rhs = offset_dfs(sub.getRhs(), inductions, v2Expr);
      expr = getAffineBinaryOpExpr(AffineExprKind::Mul, lhs, rhs);
    }

    if (auto fdiv = dyn_cast<arith::FloorDivSIOp>(op)) {
      AffineExpr lhs = offset_dfs(fdiv.getLhs(), inductions, v2Expr);
      AffineExpr rhs = offset_dfs(fdiv.getRhs(), inductions, v2Expr);
      expr = getAffineBinaryOpExpr(AffineExprKind::FloorDiv, lhs, rhs);
    }

    if (auto csdiv = dyn_cast<arith::CeilDivSIOp>(op)) {
      AffineExpr lhs = offset_dfs(csdiv.getLhs(), inductions, v2Expr);
      AffineExpr rhs = offset_dfs(csdiv.getRhs(), inductions, v2Expr);
      expr = getAffineBinaryOpExpr(AffineExprKind::CeilDiv, lhs, rhs);
    }

    if (auto cudiv = dyn_cast<arith::CeilDivUIOp>(op)) {
      AffineExpr lhs = offset_dfs(cudiv.getLhs(), inductions, v2Expr);
      AffineExpr rhs = offset_dfs(cudiv.getRhs(), inductions, v2Expr);
      expr = getAffineBinaryOpExpr(AffineExprKind::CeilDiv, lhs, rhs);
    }

    if (auto apply = dyn_cast<AffineApplyOp>(op)) {
      SmallVector<AffineExpr> input;
      for (Value v : apply.getMapOperands())
        input.push_back(offset_dfs(v, inductions, v2Expr));
      AffineMap min = AffineMap::get(inductions.size(), 0, input, apply->getContext());
      expr = apply.getMap().compose(min).getResult(0);
    }

    if (!expr) {
      op->dump();
      llvm_unreachable("Operation not supported");
    }
  }

  v2Expr[v] = expr;
  return expr;
}

std::pair<int64_t, AffineMap> RmemAccess::getAccessRange(
    const DenseMap<Value, int64_t> &inductions,
    DenseMap<Value, std::tuple<int64_t, int64_t>> &indVarRange,
    DenseMap<Value, AffineExpr> &v2Expr) {
  // get access size
  // not considering memref strides
  int64_t size = -1;
  
  if (isa<rmem::RAffineLoadOp, rmem::RAffineStoreOp, 
          rmem::MemRefLoadOp, rmem::MemRefStoreOp,
          rmem::LoadOp, rmem::StoreOp>(access))
    size = 1;
  else if (auto vecLoad = dyn_cast<rmem::VectorLoadOp>(access)) {
    auto shape = vecLoad.getVectorType().getShape();
    size = 1;
    for (auto s : shape)
      size *= s;
  }
  else if (auto vecStore = dyn_cast<rmem::VectorStoreOp>(access)) {
    auto shape = vecStore.getVectorType().getShape();
    size = 1;
    for (auto s : shape)
      size *= s;
  }
  else {
    llvm::errs() << "Cannot analyze access range of op: \n" << access << "\n";
    return {-1, AffineMap()};
  }

  // base affine map

  MemRefType memType = rmem::getRawTypeFromRemotedType(base.getType()).cast<MemRefType>();
  if (!memType.hasStaticShape()) {
    llvm::errs() << "Cannot analyze access range of op: \n" << access << "\n";
    return {-1, AffineMap()};
  }
  AffineExpr baseExpr = makeCanonicalStridedLayoutExpr(memType.getShape(), access->getContext());
  AffineMap baseMap = AffineMap::get(memType.getRank(), 0, baseExpr);


  // get num indices
  SmallVector<Value> indices;
  AffineMap mapForInds = getIndices(access, indices);
  SmallVector<AffineExpr> exprs;
  for (auto indc : indices) {
    exprs.push_back(offset_dfs(indc, inductions, v2Expr));
  }

  AffineMap input = AffineMap::get(inductions.size(), 0, exprs, access->getContext());
  AffineMap output = baseMap.compose(mapForInds.compose(input));
  return {size, output};
}

std::pair<bool, AffineMap> RmemAccess::canUseRegionForThis(
    MemoryRegion mem) {
  if (mem.baseAddr != base || size == -1)
    return {false, AffineMap()};
  // 0 <= 
  //  access.offset(base) - mem.offset(base) 
  // <= mem.size - access.size
  AffineExpr trace = access_offset.getResult(0) - mem.map.getResult(0);
  AffineMap m = AffineMap::get(access_offset.getNumDims(), 0, trace);
  AffineMap sm = simplifyAffineMap(m);

  // access->dump();
  // sm.dump();
  
  // compute lower bound
  SmallVector<Attribute, 1> lowRel;
  if (sm.constantFold(low_indvars, lowRel).failed()) 
    return {false, m};
  auto lowc = lowRel[0].cast<IntegerAttr>().getValue();
  // llvm::errs() << lowc.getSExtValue() << "\n";
  if (lowc.slt(0))
    return {false, m};

  // compute upper bound
  SmallVector<Attribute, 1> highRel;
  if (sm.constantFold(high_indvars, highRel).failed()) 
    return {false, m};
  auto highc = highRel[0].cast<IntegerAttr>().getValue();
  // llvm::errs() << highc.getSExtValue() << "\n";
  if (highc.sgt(mem.sizeInEle - size))
    return {false, m};
  
  // Checked, generate new affine map to indent access_mem
  // the generated affinemap will not contain batch-indent
  // meaning an explict induction variable need to be inserted to
  // offset into num-batch before rest of inductions

  return {true, sm};
}


void RmemAccess::replaceWithNewMem(
    Value newMem, Value newIndVar, Value oldIndVar, 
    AffineMap newOffset, bool only_oneD_offset) {
  std::vector<Value> offsetInput;
  for (auto v : dep_inductions) {
    if (v == oldIndVar)
      offsetInput.push_back(newIndVar);
    else
      offsetInput.push_back(v);
  }

  IRRewriter rewriter(access->getContext());
  Location loc = access->getLoc();

  rewriter.setInsertionPoint(access);
  Value oneD_offset = rewriter.create<AffineApplyOp>(loc, 
    newOffset, offsetInput
  );

  SmallVector<Value> indForOp;
  if (!only_oneD_offset)
    indForOp.push_back(newIndVar);
  indForOp.push_back(oneD_offset);

  if (auto affineLoad = dyn_cast<RAffineLoadOp>(access)) {
    rewriter.replaceOpWithNewOp<AffineLoadOp>(access, 
      newMem, indForOp
    );
  }
  else if (auto affineStore = dyn_cast<RAffineStoreOp>(access)) {
    rewriter.replaceOpWithNewOp<AffineStoreOp>(access, 
      affineStore.getValueToStore(),
      newMem, indForOp
    );
  }
  else if (auto vecLoad = dyn_cast<rmem::VectorLoadOp>(access))
    rewriter.replaceOpWithNewOp<vector::LoadOp>(access,
      vecLoad.getResult().getType(),
      newMem, indForOp
    );
  else if (auto vecStore = dyn_cast<rmem::VectorStoreOp>(access))
    rewriter.replaceOpWithNewOp<vector::StoreOp>(access, 
      vecStore.getValueToStore(), newMem, indForOp
    );
  else if (auto memrefLoad = dyn_cast<rmem::MemRefLoadOp>(access))
    rewriter.replaceOpWithNewOp<memref::LoadOp>(access, 
      newMem, indForOp
    );
  else if (auto memrefStore = dyn_cast<rmem::MemRefStoreOp>(access))
    rewriter.replaceOpWithNewOp<memref::StoreOp>(access, 
      memrefStore.getValueToStore(), newMem, indForOp
    );
  else {
    llvm::errs() << "Cannot replace operation: \n";
    access->dump();
    llvm_unreachable("Update replaceWithNewMem func");
  }
}

}
}
