#include "mlir/IR/BuiltinTypes.h"
#include "mlir/IR/DialectImplementation.h"
#include "mlir/IR/FunctionImplementation.h"
#include "mlir/IR/OpImplementation.h"
#include "mlir/IR/Matchers.h"
#include "mlir/IR/PatternMatch.h"
#include "mlir/Dialect/Arith/IR/Arith.h"
#include "mlir/Dialect/SCF/IR/SCF.h"
#include "llvm/ADT/APFloat.h"
#include "llvm/ADT/MapVector.h"
#include "llvm/ADT/STLExtras.h"
#include "llvm/Support/FormatVariadic.h"
#include "llvm/Support/raw_ostream.h"
#include "Dialect/RemoteMem.h"
#include "Dialect/RemoteMemTypes.h"
#include "Dialect/FunctionUtils.h"
#include <iostream>
#include <fstream>
#include <string>

using namespace mlir;
using namespace mlir::rmem;

#include "Dialect/RemoteMemOpsEnums.cpp.inc"
#include "Dialect/RemoteMemOpsDialect.cpp.inc"

//================================================================
// Common Utility Canonicalization Functions
//================================================================


// Look up operation with given type and symbol
template <typename OpTy>
static OpTy lookupSymbolInModule(Operation *parent, StringRef name) {
  Operation *module = parent;
  while (module && !LLVM::satisfiesLLVMModule(module))
    module = module->getParentOp();
  assert(module && "unexpected operation outside of a module");
  return dyn_cast_or_null<OpTy>(
      mlir::SymbolTable::lookupSymbolIn(module, name));
}

//================================================================
// Memref global op
//================================================================

LogicalResult rmem::MemRefGetGlobalOp::verifySymbolUses(mlir::SymbolTableCollection&) {
  return mlir::success();
}

//================================================================
// Memref reinterpret cast op
//================================================================


//================================================================
// LLVM Mlloc Operation
//================================================================

//================================================================
// Memref Alloc Operation
// ==============================================================

// =================================================================
// Materialzation Operation
// =================================================================

void MaterializeOp::build(mlir::OpBuilder &builder, mlir::OperationState &state, Value rmemref) {
  RemoteMemRefType rmrefType = rmemref.getType().dyn_cast<RemoteMemRefType>();
  Type rawSource = getRawTypeFromRemotedType(rmrefType);
  MaterializeOp::build(builder, state, rawSource, rmemref);
}

LogicalResult MaterializeOp::verify() {
  Type rawSource = getRawTypeFromRemotedType(getRmemref().getType());
  if (rawSource != getLocalRef().getType()) {
    return emitOpError("Missmatch target type for materialization operation\n-- remote-type: ") << getRmemref().getType() << "\n-- expected raw type: " << rawSource << "\n-- given raw type:" << getLocalRef().getType();
  }
  return mlir::success();
}

// struct MaterializationFoldPattern : public OpRewritePattern<MaterializeOp> {
//   using OpRewritePattern<MaterializeOp>::OpRewritePattern;

//   /* Fold x.virtualize().materialize()
//     current virtualize and materialze will keep the result type consistent, might need castOp in the future
//   */
//   LogicalResult matchAndRewrite(MaterializeOp op, PatternRewriter &rewriter) const override {
//     Value matInput = op.getOperand();
//     VirtualizeOp virtOp = matInput.getDefiningOp<VirtualizeOp>();
//     if (!virtOp) return mlir::failure();

//     // Replace materialize op with virtualize input
//     // DCE will take care of redundant virt op
//     rewriter.replaceOp(op, virtOp.getOperand());
//     return mlir::success();
//   }
// };

// void MaterializeOp::getCanonicalizationPatterns(RewritePatternSet &results, MLIRContext *context) {
//   results.add<
//   MaterializationFoldPattern
//   >(context);
// }


// ==============================================================
// RemoteMem LLVMAddressOfOP
// ==============================================================
LLVMGlobalOp LLVMAddressOfOp::getGlobal() {
  return lookupSymbolInModule<LLVMGlobalOp>((*this)->getParentOp(), getGlobalName());
}
//================================================================
// RemoteMem Dialect
//================================================================

RingCache::RingCache(size_t blockSize, size_t nBlocks, rmem::RemoteMemRefType vaddrType, size_t perBlock, Value lbase, Value rbase): blockSize(blockSize), nBlocks(nBlocks), perBlock(perBlock), lbase(lbase), rbase(rbase), vaddrType(vaddrType) {
  totalSize = blockSize * nBlocks;
};

LocalCache::LocalCache(ArrayAttr attrs) {
  baseSym = attrs[0].cast<StringAttr>().getValue();
  rbase = nullptr;
  lOfst = attrs[1].cast<IntegerAttr>().getValue().getZExtValue();
  rOfst = attrs[2].cast<IntegerAttr>().getValue().getZExtValue();
  rSize = attrs[3].cast<IntegerAttr>().getValue().getSExtValue();
  eleType = attrs[4].cast<TypeAttr>().getValue();
  blockSize = attrs[5].cast<IntegerAttr>().getValue().getZExtValue();
  nBlocks = attrs[6].cast<IntegerAttr>().getValue().getZExtValue();
  type = static_cast<CacheType>(attrs[7].cast<IntegerAttr>().getValue().getZExtValue());
}

LocalCache::LocalCache(ArrayAttr attrs, DenseMap<StringRef, Value> &access_mem_base_pool) : LocalCache(attrs) {
  rbase = access_mem_base_pool[baseSym];
}

ArrayAttr LocalCache::toAttr(OpBuilder &builder) {
  SmallVector<Attribute, 8> attrs;
  attrs.push_back(builder.getStringAttr(baseSym));
  attrs.push_back(builder.getI64IntegerAttr(lOfst));
  attrs.push_back(builder.getI64IntegerAttr(rOfst));
  attrs.push_back(builder.getI64IntegerAttr(rSize));
  attrs.push_back(TypeAttr::get(eleType));
  attrs.push_back(builder.getI64IntegerAttr(blockSize));
  attrs.push_back(builder.getI64IntegerAttr(nBlocks));
  attrs.push_back(builder.getI32IntegerAttr(static_cast<int>(type)));
  auto rel = builder.getArrayAttr(attrs);
  return rel;
}

// should use opInterface instead
std::pair<bool, Value> mlir::rmem::isRemoteAccess(Operation *op) {
  if (auto affineStore = dyn_cast<rmem::RAffineStoreOp>(op)) {
    return {rmem::isTrueRemoteRef(affineStore.getMemref().getType()), affineStore.getMemref()};
  }
  if (auto affineLoad = dyn_cast<rmem::RAffineLoadOp>(op)) {
    return {rmem::isTrueRemoteRef(affineLoad.getMemref().getType()), affineLoad.getMemref()};
  }
  if (auto vecLoad = dyn_cast<rmem::VectorLoadOp>(op)) {
    return {rmem::isTrueRemoteRef(vecLoad.getBase().getType()), vecLoad.getBase()};
  }
  if (auto vecStore = dyn_cast<rmem::VectorStoreOp>(op)) {
    return {rmem::isTrueRemoteRef(vecStore.getBase().getType()), vecStore.getBase()};
  }
  if (auto memrefLoad = dyn_cast<rmem::MemRefLoadOp>(op)) {
    return {rmem::isTrueRemoteRef(memrefLoad.getMemref().getType()), memrefLoad.getMemRef()};
  }
  if (auto memrefStore = dyn_cast<rmem::MemRefStoreOp>(op)) {
    return {rmem::isTrueRemoteRef(memrefStore.getMemref().getType()), memrefStore.getMemRef()};
  }
  if (auto llvmLoad = dyn_cast<rmem::LoadOp>(op)) {
    return {rmem::isTrueRemoteRef(llvmLoad.getAddr().getType()), llvmLoad.getAddr()};
  }
  if (auto llvmStore = dyn_cast<rmem::StoreOp>(op)) {
    return {rmem::isTrueRemoteRef(llvmStore.getAddr().getType()), llvmStore.getAddr()};
  }
  return {false, Value()};
}

void mlir::rmem::readCachesFromFile(std::unordered_map<int, mlir::rmem::Cache*> &caches, std::string &path) {
  std::ifstream cfg(path);
  if (!cfg.is_open()) {
    llvm::errs() << "cannot open cache config file: " << path << "\n";
  }
  // format: cache id, type, token offset, raddr offset, laddr offset, slots, line size bytes, qid 
  int cache_id, type, slots, qid, num_ways;
  uint64_t token_off, raddr_off, laddr_off, line_size;
  while (cfg >> cache_id >> type >> token_off >> raddr_off >> laddr_off >> slots >> line_size >> qid) {
    if (type == 0) {
      caches.insert(std::make_pair(cache_id, new DirectMappedCache(cache_id, slots, qid, token_off, raddr_off, laddr_off, line_size))); 
    } else if (type == 1) {
      cfg >> num_ways;
      caches.insert(std::make_pair(cache_id, new SetAssocativeCache(cache_id, slots, qid, token_off, raddr_off, laddr_off, line_size, num_ways))); 
    } else if (type == 2) {
      caches.insert(std::make_pair(cache_id, new FullLRUCache(cache_id, slots, qid, token_off, raddr_off, laddr_off, line_size))); 
    } else {
      llvm::errs() << "cannot recognize cache type: " << type << "\n";
      exit(1);
    }
  }
  llvm::errs() << caches.size() << " caches read\n";
}

Value Token::get_token(OpBuilder &rewriter, Value offI64, ModuleOp mop, mlir::Location loc) {
  SmallVector<LLVM::GEPArg, 2> base_inds;
  base_inds.push_back(0);
  base_inds.push_back(0);
  Value tbase = rewriter.create<LLVM::GEPOp>(loc, 
    LLVM::LLVMPointerType::get(rmem::getCacheTokenType(mop.getContext())),
    rewriter.create<LLVM::AddressOfOp>(loc, rmem::getOrCreateTokens(mop)),
    base_inds
    );

  SmallVector<LLVM::GEPArg, 1> inds{offI64};
  Value toff = rewriter.create<LLVM::GEPOp>(loc, 
    tbase.getType(),
    tbase, inds
  );
  return toff;
}

Value Token::get_field_ptr(OpBuilder &rewriter, Value token, int field, Type field_type, mlir::Location loc) {
  SmallVector<LLVM::GEPArg, 2> inds;
  inds.push_back(0);
  inds.push_back(field);

  Value fp = rewriter.create<LLVM::GEPOp>(loc, LLVM::LLVMPointerType::get(field_type), token, inds);
  return fp;
}

Value Token::check_flag(OpBuilder &rewriter, Value token, uint8_t flag, mlir::Location loc) {
  Value fv32 = rewriter.create<arith::ExtSIOp>(loc, rewriter.getI32Type(), 
    rewriter.create<LLVM::LoadOp>(loc, 
      Token::get_field_ptr(rewriter, token, Token::FLAGS, rewriter.getI8Type(), loc))
  );
  Value b = rewriter.create<arith::AndIOp>(loc, 
      fv32, 
      rewriter.create<arith::ConstantIntOp>(loc, flag, 32));
  Value r = rewriter.create<arith::TruncIOp>(loc, rewriter.getI8Type(), b);
  return r;
}

Value Token::valid(OpBuilder &rewriter, Value token, mlir::Location loc) {
  return Token::check_flag(rewriter, token, Token::Valid, loc);
}

Value Token::dirty(OpBuilder &rewriter, Value token, mlir::Location loc) {
  return Token::check_flag(rewriter, token, Token::Dirty, loc);
}

Value Token::sync(OpBuilder &rewriter, Value token, mlir::Location loc) {
  return Token::check_flag(rewriter, token, Token::Sync, loc);
}

void Token::set(OpBuilder &rewriter, Value token, uint8_t flag, mlir::Location loc) {
  Value fp = Token::get_field_ptr(rewriter, token, Token::FLAGS, rewriter.getI8Type(), loc);
  rewriter.create<LLVM::StoreOp>(loc, rewriter.create<arith::ConstantIntOp>(loc, flag, 8), fp);
}

void Token::add(OpBuilder &rewriter, Value token, uint8_t flag, mlir::Location loc) {
  Value fp = Token::get_field_ptr(rewriter, token, Token::FLAGS, rewriter.getI8Type(), loc);
  Value fv = rewriter.create<LLVM::LoadOp>(loc, fp);
  Value newf = rewriter.create<arith::OrIOp>(loc, fv, rewriter.create<arith::ConstantIntOp>(loc, flag, 8));
  rewriter.create<LLVM::StoreOp>(loc, newf, fp);
}

void Token::clear(OpBuilder &rewriter, Value token, mlir::Location loc) {
  Token::set(rewriter, token, 0, loc);
}

Value Cache::tag(OpBuilder &rewriter, Value addr, mlir::Location loc) {
  return rewriter.create<arith::AndIOp>(
      loc, rewriter.getI64Type(), 
      rewriter.create<LLVM::PtrToIntOp>(loc, rewriter.getI64Type(), addr),
      rewriter.create<arith::ConstantIntOp>(loc, ~(this->line_size - 1), 64));
}

void Cache::request(OpBuilder &rewriter, ModuleOp mop, Value offset, Value tag, mlir::Location loc) {
  Value wr_ofst = rewriter.create<arith::ConstantIntOp>(loc, this->qid * 2, 32);
  this->cache_request_impl(rewriter, mop, wr_ofst, tag, offset, loc);
}

// static inline T * paddr(int off, uint64_t vaddr) {
//     return (T*)(_rbuf + lbuf + off * linesize + vaddr % linesize);
// }
Value Cache::paddr(OpBuilder &rewriter, ModuleOp mop, Type outputType, Value offset, Value vaddr, mlir::Location loc) {
  Value indent = rewriter.create<arith::AddIOp>(loc, 
    rewriter.create<arith::ConstantIntOp>(loc, laddr_off, 64),
    rewriter.create<arith::AddIOp>(loc, 
      rewriter.create<arith::MulIOp>(loc, 
        rewriter.create<arith::ExtSIOp>(loc, rewriter.getI64Type(), offset), 
        rewriter.create<arith::ConstantIntOp>(loc, line_size, 64)),
      rewriter.create<arith::RemSIOp>(loc, 
        vaddr, rewriter.create<arith::ConstantIntOp>(loc, line_size, 64))
    )
  ).getResult();

  auto rbufGlob = rmem::getOrCreateRbuf(mop);
  Value rbuf = rewriter.create<LLVM::LoadOp>(loc, 
    rewriter.create<LLVM::AddressOfOp>(loc, rbufGlob)
  );

  SmallVector<LLVM::GEPArg, 1> inds{indent};
  Value buf = rewriter.create<LLVM::GEPOp>(
    loc, rmem::getVoidPtrType(mop.getContext()), rbuf, inds
  );
  Value tbuf = rewriter.create<LLVM::BitcastOp>(loc, outputType, buf);
  return tbuf;
}

Value Cache::token(OpBuilder &rewriter, ModuleOp mop, Value offset, mlir::Location loc) {
  Value _off = rewriter.create<arith::ExtSIOp>(loc, 
    rewriter.getI64Type(),
    rewriter.create<arith::AddIOp>(loc, 
      offset, 
      rewriter.create<arith::ConstantIntOp>(loc, this->token_off, 32))
  );
  return Token::get_token(rewriter, _off, mop, loc);
}

Value Cache::get(OpBuilder &rewriter, ModuleOp mop, Type outputType, Value vaddr, mlir::Location loc) {
  Value tagI64 = this->tag(rewriter, vaddr, loc);
  Value offI32 = this->select(rewriter, tagI64, loc);
  Value pToken = this->token(rewriter, mop, offI32, loc);
  Value laddr = this->paddr(rewriter, mop, 
    outputType, 
    offI32, 
    rewriter.create<LLVM::PtrToIntOp>(loc, rewriter.getI64Type(), vaddr), loc);

  Value isValid = Token::valid(rewriter, pToken, loc);
  scf::IfOp ifNeedPoll = rewriter.create<scf::IfOp>(loc, 
    rewriter.getI1Type(),
    rewriter.create<arith::CmpIOp>(loc, arith::CmpIPredicate::ne, 
      rewriter.create<arith::ExtSIOp>(loc, rewriter.getI32Type(), isValid), 
      rewriter.create<arith::ConstantIntOp>(loc, 0, 32)),
    true
  );

  rewriter.setInsertionPointToStart(ifNeedPoll.thenBlock());
  Value tokenTag = rewriter.create<LLVM::LoadOp>(loc, 
    Token::get_field_ptr(rewriter, pToken, Token::TAG, rewriter.getI64Type(), loc));
  Value tagNotMatch = rewriter.create<arith::CmpIOp>(loc, 
    arith::CmpIPredicate::ne,
    tokenTag,
    tagI64
  );
  rewriter.create<scf::YieldOp>(loc, tagNotMatch);

  rewriter.setInsertionPointToStart(ifNeedPoll.elseBlock());
  rewriter.create<scf::YieldOp>(loc, rewriter.create<arith::ConstantIntOp>(loc, 1, 1).getResult());
  rewriter.setInsertionPointAfter(ifNeedPoll);

  auto needPoll = rewriter.create<scf::IfOp>(loc, outputType, ifNeedPoll.getResult(0), true);
  rewriter.setInsertionPointToStart(needPoll.thenBlock());
  this->request_poll(rewriter, mop, offI32, tagI64, loc);
  rewriter.create<scf::YieldOp>(loc, laddr);
  rewriter.setInsertionPointToStart(needPoll.elseBlock());
  rewriter.create<scf::YieldOp>(loc, laddr);
  rewriter.setInsertionPointAfter(needPoll);
  // Token::add(rewriter, pToken, Token::Dirty, loc);
  // needPoll->getBlock()->dump();
  return needPoll.getResult(0);
}

Value Cache::get_mut(OpBuilder &rewriter, ModuleOp mop, Type outputType, Value vaddr, mlir::Location loc) {
  Value tagI64 = this->tag(rewriter, vaddr, loc);
  Value offI32 = this->select(rewriter, tagI64, loc);
  Value pToken = this->token(rewriter, mop, offI32, loc);
  Value laddr = this->paddr(rewriter, mop, 
    outputType, 
    offI32, 
    rewriter.create<LLVM::PtrToIntOp>(loc, rewriter.getI64Type(), vaddr), loc);

  Value isValid = Token::valid(rewriter, pToken, loc);
  scf::IfOp ifNeedPoll = rewriter.create<scf::IfOp>(loc, 
    rewriter.getI1Type(),
    rewriter.create<arith::CmpIOp>(loc, arith::CmpIPredicate::ne, 
      rewriter.create<arith::ExtSIOp>(loc, rewriter.getI32Type(), isValid), 
      rewriter.create<arith::ConstantIntOp>(loc, 0, 32)),
    true
  );

  rewriter.setInsertionPointToStart(ifNeedPoll.thenBlock());
  Value tokenTag = rewriter.create<LLVM::LoadOp>(loc, 
    Token::get_field_ptr(rewriter, pToken, Token::TAG, rewriter.getI64Type(), loc));
  Value tagNotMatch = rewriter.create<arith::CmpIOp>(loc, 
    arith::CmpIPredicate::ne,
    tokenTag,
    tagI64
  );
  rewriter.create<scf::YieldOp>(loc, tagNotMatch);

  rewriter.setInsertionPointToStart(ifNeedPoll.elseBlock());
  rewriter.create<scf::YieldOp>(loc, rewriter.create<arith::ConstantIntOp>(loc, 1, 1).getResult());
  rewriter.setInsertionPointAfter(ifNeedPoll);

  auto needPoll = rewriter.create<scf::IfOp>(loc, outputType, ifNeedPoll.getResult(0), true);
  rewriter.setInsertionPointToStart(needPoll.thenBlock());
  this->request_poll(rewriter, mop, offI32, tagI64, loc);
  rewriter.create<scf::YieldOp>(loc, laddr);
  rewriter.setInsertionPointToStart(needPoll.elseBlock());
  rewriter.create<scf::YieldOp>(loc, laddr);
  rewriter.setInsertionPointAfter(needPoll);

  Token::add(rewriter, pToken, Token::Dirty, loc);
  return needPoll.getResult(0);
}

void Cache::request_poll(OpBuilder &rewriter, ModuleOp mop, Value offset, Value tag, mlir::Location loc) {
  Value req_ofst = rewriter.create<arith::ConstantIntOp>(loc, this->qid * 2, 32);
  this->cache_request_impl(rewriter, mop, req_ofst, tag, offset, loc);

  Value _qid = rewriter.create<arith::ConstantIntOp>(loc, this->qid, 32);
  Value _token = this->token(rewriter, mop, offset, loc);
  Value _seq = rewriter.create<LLVM::LoadOp>(loc, 
    Token::get_field_ptr(rewriter, _token, Token::SEQ, rewriter.getI16Type(), loc));
  this->poll_qid(rewriter, _qid, _seq, mop, loc);
}

Value Cache::cache_request_impl(OpBuilder &rewriter, ModuleOp mop, Value wr_offset, Value tag, Value offset, mlir::Location loc) {
  auto reqFn = rmem::lookupOrCreateFn(
    mop, "cache_request_impl_" + std::to_string(this->cache_id),
    ArrayRef<Type>({
      rewriter.getI32Type(),
      rewriter.getI64Type(),
      rewriter.getI32Type(),
      // rmem::getVoidPtrType(ctx),
      rewriter.getI8Type()
    }),
    rewriter.getI32Type()
  );
  auto rs = rmem::createLLVMCall(rewriter, loc, reqFn, {
    wr_offset, tag, offset, rewriter.create<arith::ConstantIntOp>(loc, 1, 8)
  });
  return rs.front();
}

void Cache::poll_qid(OpBuilder &rewriter, Value qid, Value seq, ModuleOp mop, mlir::Location loc) {
  auto pollFn = rmem::lookupOrCreateFn(
    mop, "poll_qid" + std::to_string(this->cache_id),
    ArrayRef<Type>({
      rewriter.getI32Type(),
      rewriter.getI16Type()
    }),
    nullptr
  );
  rmem::createLLVMCall(rewriter, loc, pollFn, {qid, seq});
}

Value SetAssocativeCache::select(OpBuilder &rewriter, Value tag, mlir::Location loc) {
  ModuleOp mop = tag.getDefiningOp()->getParentOfType<ModuleOp>();
  auto selFn = rmem::lookupOrCreateFn(
    mop, "select_" + std::to_string(this->cache_id),
    ArrayRef<Type>({
      rewriter.getI64Type()
    }),
    rewriter.getI32Type()
  );
  auto rels = rmem::createLLVMCall(rewriter, loc, selFn, {tag});
  return rels.front();
}

Value FullLRUCache::select(OpBuilder &rewriter, Value tag, mlir::Location loc) {
  ModuleOp mop = tag.getDefiningOp()->getParentOfType<ModuleOp>();
  auto selFn = rmem::lookupOrCreateFn(
    mop, "select_" + std::to_string(this->cache_id),
    ArrayRef<Type>({
      rewriter.getI64Type()
    }),
    rewriter.getI32Type()
  );
  auto rels = rmem::createLLVMCall(rewriter, loc, selFn, {tag});
  return rels.front();
}

static constexpr const char kVolatileAttrName[] = "volatile_";
static constexpr const char kNonTemporalAttrName[] = "nontemporal";

void rmem::StoreOp::build(OpBuilder &builder, OperationState &result, Value value,
                    Value addr, unsigned alignment, bool isVolatile,
                    bool isNonTemporal) {
  result.addOperands({value, addr});
  result.addTypes({});
  if (isVolatile)
    result.addAttribute(kVolatileAttrName, builder.getUnitAttr());
  if (isNonTemporal)
    result.addAttribute(kNonTemporalAttrName, builder.getUnitAttr());
  if (alignment != 0)
    result.addAttribute("alignment", builder.getI64IntegerAttr(alignment));
}

void RemoteMemDialect::initialize() {
  registerTypes();
  addOperations<
#define GET_OP_LIST
#include "Dialect/RemoteMemOps.cpp.inc"
  >();
}

#define GET_OP_CLASSES
#include "Dialect/RemoteMemOps.cpp.inc"