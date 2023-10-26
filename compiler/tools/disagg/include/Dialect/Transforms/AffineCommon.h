#include "mlir/IR/Types.h"
#include "mlir/IR/Value.h"
#include "llvm/Support/TypeName.h"
#include <set>
#include <vector>
#include <tuple>

namespace mlir {
class Operation;
class AffineMap;
class AffineExpr;

namespace rmem {

enum access_type {
  NO_EFFECT = 0,
  READ_ONLY,
  WRITE_ONLY,
  READ_AND_WRITE
};

inline access_type operator | (access_type a, access_type b) {
  return access_type(static_cast<int>(a) | static_cast<int>(b));
}

//==============================================
// Helper funcs
//==============================================
// get indices variables
// if operation applies affine map, return map directly
AffineMap getIndices(Operation *op, SmallVector<Value> &opds);

void loopGetRemoteAccess(AffineForOp loop, std::vector<std::pair<Operation *, Value>> &rAccess);

// Get induction variable above current loop, inclusive
void ind_dfs(AffineForOp op, 
              DenseMap<AffineForOp, std::vector<Value>> &indVars, 
              DenseMap<AffineForOp, AffineForOp> &nest);

//==============================================
// Meta data classes
//==============================================
struct MemoryRegion {
public:
  MemoryRegion(): sizeInEle(0), only_oneD(false), t(access_type::NO_EFFECT) {}
  MemoryRegion(Value base, StringRef baseSym, AffineMap map, uint64_t s, bool only_oneD,
    const std::vector<Value> dep_inductions, 
    DenseMap<Value, std::tuple<int64_t, int64_t>> &indVarRange
  );

  void inspectRegion();

  bool canUsePoolForThis(const LocalCache &cache, uint64_t batch);
  void createNewCache(uint64_t batch, DenseMap<StringRef, LocalCache> &localPools, RemoteMemTypeLowerer &typeConverter);

  Value baseAddr;
  AffineMap map;
  uint64_t sizeInEle;
  bool only_oneD;

  std::vector<Value> dep_inductions; 
  SmallVector<Attribute> low_indvars;
  SmallVector<Attribute> high_indvars;

  size_t index_in_iterargs;
  StringRef baseSym;
  std::string fromPool;

  access_type t;
  Value _laddr; // set after paddr (inner preloop)
};



struct RmemAccess {
public:
  RmemAccess() = default;
  RmemAccess(Operation *access, Value base, 
      const std::vector<Value> &available_inductions,
      DenseMap<Value, std::tuple<int64_t, int64_t>> &indVarRange, 
      DenseMap<Value, AffineExpr> &v2Expr);

  void inspectAccess();

  // get size and offset affine map
  std::pair<int64_t, AffineMap> getAccessRange(
    const DenseMap<Value, int64_t> &inductions,
    DenseMap<Value, std::tuple<int64_t, int64_t>> &indVarRange,
    DenseMap<Value, AffineExpr> &v2Expr);

  // TODO: access indution apply map
  // 0 - low, 1 - high
  // get indice variable low, high range
  std::pair<bool, AffineMap> canUseRegionForThis(
    MemoryRegion mem);

  void replaceWithNewMem(
    Value newMem, Value newIndVar, Value oldIndVar, 
    AffineMap newOffset, bool only_oneD_offset);

  Operation *access;
  access_type t;
  Value base;
  AffineMap access_offset;
  int64_t size;

  // induction variables of all enclosing loops, in order and inclusive
  std::vector<Value> dep_inductions; 
  SmallVector<Attribute> low_indvars;
  SmallVector<Attribute> high_indvars;
};

}
}

