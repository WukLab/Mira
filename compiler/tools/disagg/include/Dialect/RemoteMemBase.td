#ifndef REMOTEMEMREF_BASE
#define REMOTEMEMREF_BASE

include "mlir/IR/OpBase.td"
include "mlir/IR/DialectBase.td"
include "mlir/IR/EnumAttr.td"
/* Dialect Definitions */

def RemoteMem_Dialect : Dialect {
  let name = "rmem";
  let cppNamespace = "::mlir::rmem";
  let description = [{The `rmem` dialect provides a unified interface to the remote memory access. The dialect will be converted to raw pointer or remotable-cache access eventually}];
  let extraClassDeclaration = [{
  private:
    void registerTypes();

  public:
  }];
  let emitAccessorPrefix = kEmitAccessorPrefix_Prefixed;
//   let useDefaultAttributePrinterParser = 1;
  let useDefaultTypePrinterParser = 1;
}

class RemoteMem_Op<string mnemonic, list<Trait> traits = []>:
  Op<RemoteMem_Dialect, mnemonic, traits>;

// Address compare predicates
def AddrCmpPredicateEQ  : I64EnumAttrCase< "EQ", 0, "eq">;
def AddrCmpPredicateNE  : I64EnumAttrCase< "NE", 1, "ne">;
def AddrCmpPredicateSLT : I64EnumAttrCase<"SLT", 2, "slt">;
def AddrCmpPredicateSLE : I64EnumAttrCase<"SLE", 3, "sle">;
def AddrCmpPredicateSGT : I64EnumAttrCase<"SGT", 4, "sgt">;
def AddrCmpPredicateSGE : I64EnumAttrCase<"SGE", 5, "sge">;
def AddrCmpPredicateULT : I64EnumAttrCase<"ULT", 6, "ult">;
def AddrCmpPredicateULE : I64EnumAttrCase<"ULE", 7, "ule">;
def AddrCmpPredicateUGT : I64EnumAttrCase<"UGT", 8, "ugt">;
def AddrCmpPredicateUGE : I64EnumAttrCase<"UGE", 9, "uge">;
def RemoteMem_AddrCmpPredicate : I64EnumAttr<
    "RAddrCmpPredicate",
    "rmem.addrcmp comparison predicate",
    [AddrCmpPredicateEQ, AddrCmpPredicateNE, AddrCmpPredicateSLT, AddrCmpPredicateSLE,
     AddrCmpPredicateSGT, AddrCmpPredicateSGE, AddrCmpPredicateULT, AddrCmpPredicateULE,
     AddrCmpPredicateUGT, AddrCmpPredicateUGE]> {
  let cppNamespace = "::mlir::rmem";
}

def LinkagePrivate
    : I64EnumAttrCase<"Private", 0, "private">;
def LinkageInternal
    : I64EnumAttrCase<"Internal", 1, "internal">;
def LinkageAvailableExternally
    : I64EnumAttrCase<"AvailableExternally", 2, "available_externally">;
def LinkageLinkonce
    : I64EnumAttrCase<"Linkonce", 3,  "linkonce">;
def LinkageWeak
    : I64EnumAttrCase<"Weak", 4, "weak">;
def LinkageCommon
    : I64EnumAttrCase<"Common", 5, "common">;
def LinkageAppending
    : I64EnumAttrCase<"Appending", 6, "appending">;
def LinkageExternWeak
   : I64EnumAttrCase<"ExternWeak", 7, "extern_weak">;
def LinkageLinkonceODR
    : I64EnumAttrCase<"LinkonceODR", 8, "linkonce_odr">;
def LinkageWeakODR
    : I64EnumAttrCase<"WeakODR", 9, "weak_odr">;
def LinkageExternal
    : I64EnumAttrCase<"External", 10, "external">;
def RemoteMem_Linkage: I64EnumAttr<
  "RLinkageType",
  "Remote Mem linkage types",
  [LinkagePrivate, LinkageInternal, LinkageAvailableExternally,
  LinkageLinkonce, LinkageWeak, LinkageCommon, LinkageAppending,
  LinkageExternWeak, LinkageLinkonceODR, LinkageWeakODR, LinkageExternal]> {
    let cppNamespace = "::mlir::rmem";
}

def UnnamedAddrNone : I64EnumAttrCase<"None", 0, "none">;
def UnnamedAddrLocal : I64EnumAttrCase<"Local", 1,  "local_unnamed_addr">;
def UnnamedAddrGlobal : I64EnumAttrCase<"Global", 2,  "global_unnamed_addr">;

def RemoteMem_RUnnamedAddr : I64EnumAttr <
  "RUnnamedAddr",
  "Remote Mem GlobalValue Unnamed Addr",
  [UnnamedAddrNone, UnnamedAddrLocal, UnnamedAddrGlobal]> {
    let cppNamespace = "::mlir::rmem";
}


#endif
