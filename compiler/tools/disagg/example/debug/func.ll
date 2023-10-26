; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

@str1 = internal constant [14 x i8] c"dummy_i64.dat\00"
@str0 = internal constant [14 x i8] c"dummy_f32.dat\00"

declare ptr @malloc(i64)

declare void @free(ptr)

define void @read_tensor_f32(ptr %0, i64 %1, ptr %2) !dbg !3 {
  %4 = insertvalue { i64, ptr } undef, i64 %1, 0, !dbg !7
  %5 = insertvalue { i64, ptr } %4, ptr %2, 1, !dbg !9
  %6 = alloca { i64, ptr }, i64 1, align 8, !dbg !10
  store { i64, ptr } %5, ptr %6, align 8, !dbg !11
  call void @_mlir_ciface_read_tensor_f32(ptr %0, ptr %6), !dbg !12
  ret void, !dbg !13
}

declare void @_mlir_ciface_read_tensor_f32(ptr, ptr)

define void @print_tensor_f32(i64 %0, ptr %1) !dbg !14 {
  %3 = insertvalue { i64, ptr } undef, i64 %0, 0, !dbg !15
  %4 = insertvalue { i64, ptr } %3, ptr %1, 1, !dbg !17
  %5 = alloca { i64, ptr }, i64 1, align 8, !dbg !18
  store { i64, ptr } %4, ptr %5, align 8, !dbg !19
  call void @_mlir_ciface_print_tensor_f32(ptr %5), !dbg !20
  ret void, !dbg !21
}

declare void @_mlir_ciface_print_tensor_f32(ptr)

define void @read_tensor_i64(ptr %0, i64 %1, ptr %2) !dbg !22 {
  %4 = insertvalue { i64, ptr } undef, i64 %1, 0, !dbg !23
  %5 = insertvalue { i64, ptr } %4, ptr %2, 1, !dbg !25
  %6 = alloca { i64, ptr }, i64 1, align 8, !dbg !26
  store { i64, ptr } %5, ptr %6, align 8, !dbg !27
  call void @_mlir_ciface_read_tensor_i64(ptr %0, ptr %6), !dbg !28
  ret void, !dbg !29
}

declare void @_mlir_ciface_read_tensor_i64(ptr, ptr)

define void @print_tensor_i64(i64 %0, ptr %1) !dbg !30 {
  %3 = insertvalue { i64, ptr } undef, i64 %0, 0, !dbg !31
  %4 = insertvalue { i64, ptr } %3, ptr %1, 1, !dbg !33
  %5 = alloca { i64, ptr }, i64 1, align 8, !dbg !34
  store { i64, ptr } %4, ptr %5, align 8, !dbg !35
  call void @_mlir_ciface_print_tensor_i64(ptr %5), !dbg !36
  ret void, !dbg !37
}

declare void @_mlir_ciface_print_tensor_i64(ptr)

define i32 @main() !dbg !38 {
  %1 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (float, ptr null, i32 6) to i64)), !dbg !39
  %2 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %1, 0, !dbg !41
  %3 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %2, ptr %1, 1, !dbg !42
  %4 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %3, i64 0, 2, !dbg !43
  %5 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %4, i64 3, 3, 0, !dbg !44
  %6 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %5, i64 2, 3, 1, !dbg !45
  %7 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %6, i64 2, 4, 0, !dbg !46
  %8 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %7, i64 1, 4, 1, !dbg !47
  %9 = alloca { ptr, ptr, i64, [2 x i64], [2 x i64] }, i64 1, align 8, !dbg !48
  store { ptr, ptr, i64, [2 x i64], [2 x i64] } %8, ptr %9, align 8, !dbg !49
  call void @read_tensor_f32(ptr @str0, i64 2, ptr %9), !dbg !50
  call void @print_tensor_f32(i64 2, ptr %9), !dbg !51
  %10 = call ptr @malloc(i64 ptrtoint (ptr getelementptr (i64, ptr null, i32 4) to i64)), !dbg !52
  %11 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %10, 0, !dbg !53
  %12 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %11, ptr %10, 1, !dbg !54
  %13 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %12, i64 0, 2, !dbg !55
  %14 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %13, i64 4, 3, 0, !dbg !56
  %15 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %14, i64 1, 4, 0, !dbg !57
  %16 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, i64 1, align 8, !dbg !58
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %15, ptr %16, align 8, !dbg !59
  call void @read_tensor_i64(ptr @str1, i64 1, ptr %16), !dbg !60
  call void @print_tensor_i64(i64 1, ptr %16), !dbg !61
  ret i32 0, !dbg !62
}

define i32 @_mlir_ciface_main() !dbg !63 {
  %1 = call i32 @main(), !dbg !64
  ret i32 %1, !dbg !66
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "read_tensor_f32", linkageName: "read_tensor_f32", scope: null, file: !4, line: 5, type: !5, scopeLine: 5, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!4 = !DIFile(filename: "func_llvm.mlir", directory: "/mnt/data/PL-mlir/Disagg-mlir/tools/disagg/example/debug")
!5 = !DISubroutineType(types: !6)
!6 = !{}
!7 = !DILocation(line: 8, column: 10, scope: !8)
!8 = !DILexicalBlockFile(scope: !3, file: !4, discriminator: 0)
!9 = !DILocation(line: 9, column: 10, scope: !8)
!10 = !DILocation(line: 10, column: 10, scope: !8)
!11 = !DILocation(line: 11, column: 5, scope: !8)
!12 = !DILocation(line: 12, column: 5, scope: !8)
!13 = !DILocation(line: 13, column: 5, scope: !8)
!14 = distinct !DISubprogram(name: "print_tensor_f32", linkageName: "print_tensor_f32", scope: null, file: !4, line: 16, type: !5, scopeLine: 16, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!15 = !DILocation(line: 19, column: 10, scope: !16)
!16 = !DILexicalBlockFile(scope: !14, file: !4, discriminator: 0)
!17 = !DILocation(line: 20, column: 10, scope: !16)
!18 = !DILocation(line: 21, column: 10, scope: !16)
!19 = !DILocation(line: 22, column: 5, scope: !16)
!20 = !DILocation(line: 23, column: 5, scope: !16)
!21 = !DILocation(line: 24, column: 5, scope: !16)
!22 = distinct !DISubprogram(name: "read_tensor_i64", linkageName: "read_tensor_i64", scope: null, file: !4, line: 27, type: !5, scopeLine: 27, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!23 = !DILocation(line: 30, column: 10, scope: !24)
!24 = !DILexicalBlockFile(scope: !22, file: !4, discriminator: 0)
!25 = !DILocation(line: 31, column: 10, scope: !24)
!26 = !DILocation(line: 32, column: 10, scope: !24)
!27 = !DILocation(line: 33, column: 5, scope: !24)
!28 = !DILocation(line: 34, column: 5, scope: !24)
!29 = !DILocation(line: 35, column: 5, scope: !24)
!30 = distinct !DISubprogram(name: "print_tensor_i64", linkageName: "print_tensor_i64", scope: null, file: !4, line: 38, type: !5, scopeLine: 38, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!31 = !DILocation(line: 41, column: 10, scope: !32)
!32 = !DILexicalBlockFile(scope: !30, file: !4, discriminator: 0)
!33 = !DILocation(line: 42, column: 10, scope: !32)
!34 = !DILocation(line: 43, column: 10, scope: !32)
!35 = !DILocation(line: 44, column: 5, scope: !32)
!36 = !DILocation(line: 45, column: 5, scope: !32)
!37 = !DILocation(line: 46, column: 5, scope: !32)
!38 = distinct !DISubprogram(name: "main", linkageName: "main", scope: null, file: !4, line: 49, type: !5, scopeLine: 49, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!39 = !DILocation(line: 61, column: 11, scope: !40)
!40 = !DILexicalBlockFile(scope: !38, file: !4, discriminator: 0)
!41 = !DILocation(line: 64, column: 11, scope: !40)
!42 = !DILocation(line: 65, column: 11, scope: !40)
!43 = !DILocation(line: 66, column: 11, scope: !40)
!44 = !DILocation(line: 67, column: 11, scope: !40)
!45 = !DILocation(line: 68, column: 11, scope: !40)
!46 = !DILocation(line: 69, column: 11, scope: !40)
!47 = !DILocation(line: 70, column: 11, scope: !40)
!48 = !DILocation(line: 71, column: 11, scope: !40)
!49 = !DILocation(line: 72, column: 5, scope: !40)
!50 = !DILocation(line: 74, column: 5, scope: !40)
!51 = !DILocation(line: 75, column: 5, scope: !40)
!52 = !DILocation(line: 81, column: 11, scope: !40)
!53 = !DILocation(line: 84, column: 11, scope: !40)
!54 = !DILocation(line: 85, column: 11, scope: !40)
!55 = !DILocation(line: 86, column: 11, scope: !40)
!56 = !DILocation(line: 87, column: 11, scope: !40)
!57 = !DILocation(line: 88, column: 11, scope: !40)
!58 = !DILocation(line: 89, column: 11, scope: !40)
!59 = !DILocation(line: 90, column: 5, scope: !40)
!60 = !DILocation(line: 92, column: 5, scope: !40)
!61 = !DILocation(line: 93, column: 5, scope: !40)
!62 = !DILocation(line: 94, column: 5, scope: !40)
!63 = distinct !DISubprogram(name: "_mlir_ciface_main", linkageName: "_mlir_ciface_main", scope: null, file: !4, line: 96, type: !5, scopeLine: 96, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!64 = !DILocation(line: 97, column: 10, scope: !65)
!65 = !DILexicalBlockFile(scope: !63, file: !4, discriminator: 0)
!66 = !DILocation(line: 98, column: 5, scope: !65)
