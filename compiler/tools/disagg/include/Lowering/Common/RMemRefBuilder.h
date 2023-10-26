#ifndef LOWER_REMOTE_MEM_MEMREF_BUILDER_H
#define LOWER_REMOTE_MEM_MEMREF_BUILDER_H

#include "mlir/Conversion/LLVMCommon/StructBuilder.h"
#include "mlir/IR/OperationSupport.h"
#include "mlir/IR/Types.h"
#include "mlir/IR/Value.h"
#include "mlir/IR/Builders.h"

namespace mlir {
class MemRefType;
namespace LLVM {
class LLVMPointerType;
} // namespace LLVM

namespace rmem {
class RemoteMemDialect;
class RemoteMemRefType;
class RemoteMemTypeLowerer;

// NO NEED TO worry about unranked memref / tensor
// C/C++/Polygeist does not allow that 

// Mimic the behaviour of LLVMCOMMON/MemrefBuilder
// Except the aligned/allocated pointer is remote memref pointer
class RemoteMemRefDescriptor : public StructBuilder {
public:
  /// Construct a helper for the given descriptor value.
  explicit RemoteMemRefDescriptor(Value descriptor);
  /// Builds IR creating an `undef` value of the descriptor type.
  static RemoteMemRefDescriptor undef(OpBuilder &builder, Location loc,
                                Type descriptorType);
  /// Builds IR creating a MemRef descriptor that represents `type` and
  /// populates it with static shape and stride information extracted from the
  /// type.
  static RemoteMemRefDescriptor fromStaticShape(OpBuilder &builder, Location loc,
                                          RemoteMemTypeLowerer &typeConverter,
                                          RemoteMemRefType type, Value memory);

  /// Builds IR extracting the allocated pointer from the descriptor.
  Value allocatedPtr(OpBuilder &builder, Location loc);
  /// Builds IR inserting the allocated pointer into the descriptor.
  void setAllocatedPtr(OpBuilder &builder, Location loc, Value ptr);

  /// Builds IR extracting the aligned pointer from the descriptor.
  Value alignedPtr(OpBuilder &builder, Location loc);

  /// Builds IR inserting the aligned pointer into the descriptor.
  void setAlignedPtr(OpBuilder &builder, Location loc, Value ptr);

  /// Builds IR extracting the offset from the descriptor.
  Value offset(OpBuilder &builder, Location loc);

  /// Builds IR inserting the offset into the descriptor.
  void setOffset(OpBuilder &builder, Location loc, Value offset);
  void setConstantOffset(OpBuilder &builder, Location loc, uint64_t offset);

  /// Builds IR extracting the pos-th size from the descriptor.
  Value size(OpBuilder &builder, Location loc, unsigned pos);
  Value size(OpBuilder &builder, Location loc, Value pos, int64_t rank);

  /// Builds IR inserting the pos-th size into the descriptor
  void setSize(OpBuilder &builder, Location loc, unsigned pos, Value size);
  void setConstantSize(OpBuilder &builder, Location loc, unsigned pos,
                       uint64_t size);

  /// Builds IR extracting the pos-th size from the descriptor.
  Value stride(OpBuilder &builder, Location loc, unsigned pos);

  /// Builds IR inserting the pos-th stride into the descriptor
  void setStride(OpBuilder &builder, Location loc, unsigned pos, Value stride);
  void setConstantStride(OpBuilder &builder, Location loc, unsigned pos,
                         uint64_t stride);

  /// Returns the type of array element in this descriptor.
  Type getIndexType() { return indexType; };

  /// Returns the RemoteMemRef<ptr> type this descriptor contains.
  RemoteMemRefType getElementPtrType();

  /// Builds IR populating a MemRef descriptor structure from a list of
  /// individual values composing that descriptor, in the following order:
  /// - allocated pointer;
  /// - aligned pointer;
  /// - offset;
  /// - <rank> sizes;
  /// - <rank> shapes;
  /// where <rank> is the MemRef rank as provided in `type`.
  static Value pack(OpBuilder &builder, Location loc,
                    RemoteMemTypeLowerer &converter, RemoteMemRefType type,
                    ValueRange values);

  /// Builds IR extracting individual elements of a MemRef descriptor structure
  /// and returning them as `results` list.
  static void unpack(OpBuilder &builder, Location loc, Value packed,
                     RemoteMemRefType type, SmallVectorImpl<Value> &results);

  /// Returns the number of non-aggregate values that would be produced by
  /// `unpack`.
  static unsigned getNumUnpackedValues(RemoteMemRefType type);

private:
  // Cached index type.
  Type indexType;
};

/// Helper class allowing the user to access a range of Values that correspond
/// to an unpacked memref descriptor using named accessors. This does not own
/// the values.
class RemoteMemRefDescriptorView {
public:
  /// Constructs the view from a range of values. Infers the rank from the size
  /// of the range.
  explicit RemoteMemRefDescriptorView(ValueRange range);

  /// Returns the allocated pointer Value.
  Value allocatedPtr();

  /// Returns the aligned pointer Value.
  Value alignedPtr();

  /// Returns the offset Value.
  Value offset();

  /// Returns the pos-th size Value.
  Value size(unsigned pos);

  /// Returns the pos-th stride Value.
  Value stride(unsigned pos);

private:
  /// Rank of the memref the descriptor is pointing to.
  int rank;
  /// Underlying range of Values.
  ValueRange elements;
};
} // namespace rmem

} // namespace mlir


#endif
