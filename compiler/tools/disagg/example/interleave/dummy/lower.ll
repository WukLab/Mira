; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i64 }
%struct.node = type { ptr, ptr, ptr, ptr, i32, [23 x i32] }
%struct.arc = type { ptr, ptr, ptr, ptr, [8 x i32] }

@g_payload = external global [23 x i32]
@str2 = internal constant [18 x i8] c"Dont opt this %d\0A\00"
@str1 = internal constant [18 x i8] c"Exec time %.5f s\0A\00"
@arc = external global ptr
@str0 = internal constant [13 x i8] c"after setup\0A\00"

declare ptr @malloc(i64)

declare void @free(ptr)

declare i32 @clock_gettime(i32, ptr)

declare i32 @printf(ptr, ...)

define i32 @main() !dbg !3 {
  call void @setup(), !dbg !7
  %1 = call i32 (ptr, ...) @printf(ptr @str0), !dbg !9
  %2 = call i64 @microtime(), !dbg !10
  %3 = load ptr, ptr @arc, align 8, !dbg !11
  call void @visit(ptr %3), !dbg !12
  %4 = call i64 @microtime(), !dbg !13
  %5 = sub i64 %4, %2, !dbg !14
  %6 = sitofp i64 %5 to double, !dbg !15
  %7 = fdiv double %6, 1.000000e+06, !dbg !16
  %8 = call i32 (ptr, ...) @printf(ptr @str1, double %7), !dbg !17
  %9 = load i32, ptr getelementptr (i32, ptr @g_payload, i32 5), align 4, !dbg !18
  %10 = call i32 (ptr, ...) @printf(ptr @str2, i32 %9), !dbg !19
  ret i32 0, !dbg !20
}

declare void @setup()

define internal i64 @microtime() !dbg !21 {
  %1 = alloca %struct.timespec, i64 1, align 8, !dbg !22
  %2 = call i32 @clock_gettime(i32 0, ptr %1), !dbg !24
  %3 = getelementptr %struct.timespec, ptr %1, i32 0, i32 0, !dbg !25
  %4 = load i64, ptr %3, align 8, !dbg !26
  %5 = mul i64 %4, 1000, !dbg !27
  %6 = mul i64 %5, 1000, !dbg !28
  %7 = getelementptr %struct.timespec, ptr %1, i32 0, i32 1, !dbg !29
  %8 = load i64, ptr %7, align 8, !dbg !30
  %9 = sdiv i64 %8, 1000, !dbg !31
  %10 = add i64 %6, %9, !dbg !32
  ret i64 %10, !dbg !33
}

define void @visit(ptr %0) !dbg !34 {
  %2 = alloca %struct.node, i64 1, align 8, !dbg !35
  %3 = alloca %struct.arc, i64 1, align 8, !dbg !37
  %4 = getelementptr %struct.arc, ptr %3, i32 0, i32 1, !dbg !38
  br label %5, !dbg !39

5:                                                ; preds = %8, %1
  %6 = phi i64 [ %14, %8 ], [ 0, %1 ]
  %7 = icmp slt i64 %6, 67108864, !dbg !40
  br i1 %7, label %8, label %15, !dbg !41

8:                                                ; preds = %5
  %9 = trunc i64 %6 to i32, !dbg !42
  %10 = getelementptr %struct.arc, ptr %0, i64 %6, !dbg !43
  %11 = load %struct.arc, ptr %10, align 8, !dbg !44
  store %struct.arc %11, ptr %3, align 8, !dbg !45
  %12 = load ptr, ptr %4, align 8, !dbg !46
  %13 = load %struct.node, ptr %12, align 8, !dbg !47
  store %struct.node %13, ptr %2, align 8, !dbg !48
  call void @computation(ptr %3, ptr %2, i32 %9), !dbg !49
  %14 = add i64 %6, 1, !dbg !50
  br label %5, !dbg !51

15:                                               ; preds = %5
  ret void, !dbg !52
}

declare void @computation(ptr, ptr, i32)

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "main", linkageName: "main", scope: null, file: !4, line: 9, type: !5, scopeLine: 9, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!4 = !DIFile(filename: "dummy/lower.mlir", directory: "/users/Zijian/Disagg-mlir/tools/disagg/example/interleave")
!5 = !DISubroutineType(types: !6)
!6 = !{}
!7 = !DILocation(line: 12, column: 5, scope: !8)
!8 = !DILexicalBlockFile(scope: !3, file: !4, discriminator: 0)
!9 = !DILocation(line: 15, column: 10, scope: !8)
!10 = !DILocation(line: 16, column: 10, scope: !8)
!11 = !DILocation(line: 18, column: 10, scope: !8)
!12 = !DILocation(line: 19, column: 5, scope: !8)
!13 = !DILocation(line: 20, column: 10, scope: !8)
!14 = !DILocation(line: 23, column: 11, scope: !8)
!15 = !DILocation(line: 24, column: 11, scope: !8)
!16 = !DILocation(line: 25, column: 11, scope: !8)
!17 = !DILocation(line: 26, column: 11, scope: !8)
!18 = !DILocation(line: 32, column: 11, scope: !8)
!19 = !DILocation(line: 33, column: 11, scope: !8)
!20 = !DILocation(line: 34, column: 5, scope: !8)
!21 = distinct !DISubprogram(name: "microtime", linkageName: "microtime", scope: null, file: !4, line: 37, type: !5, scopeLine: 37, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!22 = !DILocation(line: 41, column: 10, scope: !23)
!23 = !DILexicalBlockFile(scope: !21, file: !4, discriminator: 0)
!24 = !DILocation(line: 42, column: 10, scope: !23)
!25 = !DILocation(line: 43, column: 10, scope: !23)
!26 = !DILocation(line: 44, column: 10, scope: !23)
!27 = !DILocation(line: 45, column: 10, scope: !23)
!28 = !DILocation(line: 46, column: 10, scope: !23)
!29 = !DILocation(line: 47, column: 10, scope: !23)
!30 = !DILocation(line: 48, column: 11, scope: !23)
!31 = !DILocation(line: 49, column: 11, scope: !23)
!32 = !DILocation(line: 50, column: 11, scope: !23)
!33 = !DILocation(line: 51, column: 5, scope: !23)
!34 = distinct !DISubprogram(name: "visit", linkageName: "visit", scope: null, file: !4, line: 53, type: !5, scopeLine: 53, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!35 = !DILocation(line: 58, column: 10, scope: !36)
!36 = !DILexicalBlockFile(scope: !34, file: !4, discriminator: 0)
!37 = !DILocation(line: 59, column: 10, scope: !36)
!38 = !DILocation(line: 60, column: 10, scope: !36)
!39 = !DILocation(line: 61, column: 5, scope: !36)
!40 = !DILocation(line: 63, column: 10, scope: !36)
!41 = !DILocation(line: 64, column: 5, scope: !36)
!42 = !DILocation(line: 66, column: 10, scope: !36)
!43 = !DILocation(line: 67, column: 11, scope: !36)
!44 = !DILocation(line: 68, column: 11, scope: !36)
!45 = !DILocation(line: 69, column: 5, scope: !36)
!46 = !DILocation(line: 70, column: 11, scope: !36)
!47 = !DILocation(line: 71, column: 11, scope: !36)
!48 = !DILocation(line: 72, column: 5, scope: !36)
!49 = !DILocation(line: 73, column: 5, scope: !36)
!50 = !DILocation(line: 74, column: 11, scope: !36)
!51 = !DILocation(line: 75, column: 5, scope: !36)
!52 = !DILocation(line: 77, column: 5, scope: !36)
