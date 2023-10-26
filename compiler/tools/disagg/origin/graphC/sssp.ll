; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@str9 = internal constant [33 x i8] c"Too many neighbours for node %d\0A\00"
@str8 = internal constant [15 x i8] c"After heapify\0A\00"
@str7 = internal constant [17 x i8] c"After heap init\0A\00"
@MAX_D = internal global double 0x7FEFFFFFFFFFFFFF
@str6 = internal constant [7 x i8] c"%d %d\0A\00"
@str5 = internal constant [14 x i8] c"%d %d %d %lf\0A\00"
@str4 = internal constant [23 x i8] c"Couldn't open file %s\0A\00"
@str3 = internal constant [2 x i8] c"r\00"
@str2 = internal constant [5 x i8] c"%lf\0A\00"
@str1 = internal constant [2 x i8] c"w\00"
@str0 = internal constant [13 x i8] c"solution.txt\00"

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) #0

declare void @free(i8*) #1

declare i32 @__isoc99_fscanf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) #1

declare i32 @printf(i8*, ...) #1

declare i32 @fclose({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*) #1

declare i32 @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) #1

declare { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* @fopen(i8*, i8*) #1

declare i32 @atoi(i8*) #1

define i32 @main(i32 %0, i8** %1) #1 !dbg !3 {
  %3 = alloca i32, i64 1, align 4, !dbg !7
  store i32 undef, i32* %3, align 4, !dbg !7
  store i32 0, i32* %3, align 4, !dbg !7
  %4 = getelementptr i8*, i8** %1, i32 2, !dbg !9
  %5 = load i8*, i8** %4, align 8, !dbg !9
  %6 = call i32 @atoi(i8* %5), !dbg !10
  %7 = getelementptr i8*, i8** %1, i32 3, !dbg !11
  %8 = load i8*, i8** %7, align 8, !dbg !11
  %9 = call i32 @atoi(i8* %8), !dbg !12
  %10 = trunc i32 %6 to i8, !dbg !13
  %11 = trunc i32 %9 to i8, !dbg !14
  %12 = getelementptr i8*, i8** %1, i32 1, !dbg !15
  %13 = load i8*, i8** %12, align 8, !dbg !15
  %14 = call { { [16 x { double, i32 }], i32 }*, i32 }* @init_graph(i8 %10, i8 %11, i8* %13, i32* %3), !dbg !16
  %15 = getelementptr { { [16 x { double, i32 }], i32 }*, i32 }, { { [16 x { double, i32 }], i32 }*, i32 }* %14, i32 0, i32 1, !dbg !17
  %16 = load i32, i32* %15, align 4, !dbg !18
  %17 = sext i32 %16 to i64, !dbg !18
  %18 = mul i64 %17, 8, !dbg !19
  %19 = call noalias noundef i8* @malloc(i64 %18), !dbg !20
  %20 = bitcast i8* %19 to double*, !dbg !20
  call void @dijkstra({ { [16 x { double, i32 }], i32 }*, i32 }* %14, i32 0, double* %20), !dbg !21
  %21 = call { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* @fopen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @str0, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str1, i32 0, i32 0)), !dbg !22
  br label %22, !dbg !23

22:                                               ; preds = %26, %2
  %23 = phi i32 [ %32, %26 ], [ 0, %2 ]
  %24 = load i32, i32* %3, align 4, !dbg !23
  %25 = icmp slt i32 %23, %24, !dbg !24
  br i1 %25, label %26, label %33, !dbg !25

26:                                               ; preds = %22
  %27 = phi i32 [ %23, %22 ]
  %28 = sext i32 %27 to i64, !dbg !26
  %29 = getelementptr double, double* %20, i64 %28, !dbg !27
  %30 = load double, double* %29, align 8, !dbg !27
  %31 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @fprintf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @str2, i32 0, i32 0), double %30), !dbg !28
  %32 = add i32 %27, 1, !dbg !29
  br label %22, !dbg !25

33:                                               ; preds = %22
  %34 = call i32 @fclose({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %21), !dbg !30
  ret i32 0, !dbg !31
}

define { { [16 x { double, i32 }], i32 }*, i32 }* @init_graph(i8 %0, i8 %1, i8* %2, i32* %3) #1 !dbg !32 {
  %5 = alloca double, i64 1, align 8, !dbg !34
  store double undef, double* %5, align 8, !dbg !34
  %6 = alloca i32, i64 1, align 4, !dbg !36
  store i32 undef, i32* %6, align 4, !dbg !36
  %7 = alloca i32, i64 1, align 4, !dbg !36
  store i32 undef, i32* %7, align 4, !dbg !36
  %8 = alloca i32, i64 1, align 4, !dbg !36
  store i32 undef, i32* %8, align 4, !dbg !36
  %9 = call noalias noundef i8* @malloc(i64 16), !dbg !37
  %10 = bitcast i8* %9 to { { [16 x { double, i32 }], i32 }*, i32 }*, !dbg !37
  %11 = getelementptr { { [16 x { double, i32 }], i32 }*, i32 }, { { [16 x { double, i32 }], i32 }*, i32 }* %10, i32 0, i32 0, !dbg !38
  %12 = call noalias noundef i8* @malloc(i64 528000000), !dbg !39
  %13 = bitcast i8* %12 to { [16 x { double, i32 }], i32 }*, !dbg !39
  store { [16 x { double, i32 }], i32 }* %13, { [16 x { double, i32 }], i32 }** %11, align 8, !dbg !40
  br label %14, !dbg !41

14:                                               ; preds = %17, %4
  %15 = phi i64 [ 0, %4 ], [ %21, %17 ]
  %16 = icmp slt i64 %15, 2000000, !dbg !41
  br i1 %16, label %17, label %22, !dbg !41

17:                                               ; preds = %14
  %18 = load { [16 x { double, i32 }], i32 }*, { [16 x { double, i32 }], i32 }** %11, align 8, !dbg !42
  %19 = getelementptr { [16 x { double, i32 }], i32 }, { [16 x { double, i32 }], i32 }* %18, i64 %15, !dbg !42
  %20 = getelementptr { [16 x { double, i32 }], i32 }, { [16 x { double, i32 }], i32 }* %19, i32 0, i32 1, !dbg !43
  store i32 0, i32* %20, align 4, !dbg !44
  %21 = add i64 %15, 1, !dbg !41
  br label %14, !dbg !41

22:                                               ; preds = %14
  %23 = call { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* @fopen(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str3, i32 0, i32 0)), !dbg !45
  %24 = icmp eq { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %23, null, !dbg !46
  br i1 %24, label %25, label %27, !dbg !47

25:                                               ; preds = %22
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @str4, i32 0, i32 0), i8* %2), !dbg !48
  call void @exit(i32 1), !dbg !49
  br label %27, !dbg !47

27:                                               ; preds = %25, %22
  store i32 0, i32* %6, align 4, !dbg !50
  %28 = load i32, i32* %6, align 4, !dbg !51
  store i32 %28, i32* %7, align 4, !dbg !51
  %29 = load i32, i32* %7, align 4, !dbg !52
  store i32 %29, i32* %8, align 4, !dbg !52
  %30 = icmp ne i8 %1, 0, !dbg !53
  br label %31, !dbg !54

31:                                               ; preds = %113, %27
  %32 = phi i1 [ %64, %113 ], [ true, %27 ]
  %33 = phi i32 [ %65, %113 ], [ 0, %27 ]
  %34 = phi i32 [ %112, %113 ], [ -1, %27 ]
  br i1 %32, label %35, label %114, !dbg !54

35:                                               ; preds = %31
  %36 = phi i32 [ %34, %31 ]
  %37 = phi i32 [ %33, %31 ]
  br i1 %30, label %38, label %60, !dbg !55

38:                                               ; preds = %35
  %39 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @__isoc99_fscanf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @str6, i32 0, i32 0), i32* %7, i32* %6), !dbg !56
  %40 = icmp eq i32 %39, -1, !dbg !57
  %41 = icmp ne i32 %39, -1, !dbg !58
  br i1 %40, label %42, label %43, !dbg !59

42:                                               ; preds = %38
  br label %57, !dbg !59

43:                                               ; preds = %38
  %44 = load i32, i32* %8, align 4, !dbg !60
  %45 = add i32 %44, 1, !dbg !60
  store i32 %45, i32* %8, align 4, !dbg !60
  %46 = load i32, i32* %7, align 4, !dbg !61
  %47 = icmp eq i32 %46, -1, !dbg !62
  br i1 %47, label %48, label %50, !dbg !63

48:                                               ; preds = %43
  %49 = add i32 %37, 1, !dbg !64
  br label %51, !dbg !63

50:                                               ; preds = %43
  br label %51, !dbg !63

51:                                               ; preds = %48, %50
  %52 = phi i32 [ 0, %50 ], [ %49, %48 ]
  br label %53, !dbg !63

53:                                               ; preds = %51
  %54 = add i32 %52, 1, !dbg !65
  %55 = sitofp i32 %54 to double, !dbg !66
  %56 = fdiv double %55, 1.000000e+02, !dbg !67
  store double %56, double* %5, align 8, !dbg !68
  br label %57, !dbg !59

57:                                               ; preds = %42, %53
  %58 = phi i32 [ %54, %53 ], [ %37, %42 ]
  br label %59, !dbg !59

59:                                               ; preds = %57
  br label %63, !dbg !55

60:                                               ; preds = %35
  %61 = call i32 ({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }*, i8*, ...) @__isoc99_fscanf({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str5, i32 0, i32 0), i32* %8, i32* %7, i32* %6, double* %5), !dbg !69
  %62 = icmp ne i32 %61, -1, !dbg !58
  br label %63, !dbg !55

63:                                               ; preds = %59, %60
  %64 = phi i1 [ %62, %60 ], [ %41, %59 ]
  %65 = phi i32 [ %37, %60 ], [ %58, %59 ]
  br label %66, !dbg !55

66:                                               ; preds = %63
  br i1 %64, label %67, label %109

67:                                               ; preds = %66
  %68 = load i32, i32* %7, align 4, !dbg !70
  %69 = icmp slt i32 %68, 2000000, !dbg !71
  br i1 %69, label %70, label %105, !dbg !72

70:                                               ; preds = %67
  %71 = load i32, i32* %6, align 4, !dbg !73
  %72 = icmp slt i32 %71, 2000000, !dbg !74
  br i1 %72, label %73, label %101, !dbg !75

73:                                               ; preds = %70
  %74 = load i32, i32* %7, align 4, !dbg !76
  %75 = load i32, i32* %6, align 4, !dbg !77
  %76 = load double, double* %5, align 8, !dbg !78
  call void @add_edge({ { [16 x { double, i32 }], i32 }*, i32 }* %10, i32 %74, i32 %75, double %76), !dbg !79
  %77 = load i32, i32* %7, align 4, !dbg !80
  %78 = icmp sgt i32 %36, %77, !dbg !81
  br i1 %78, label %79, label %80, !dbg !82

79:                                               ; preds = %73
  br label %82, !dbg !82

80:                                               ; preds = %73
  %81 = load i32, i32* %7, align 4, !dbg !83
  br label %82, !dbg !82

82:                                               ; preds = %79, %80
  %83 = phi i32 [ %81, %80 ], [ %36, %79 ]
  br label %84, !dbg !82

84:                                               ; preds = %82
  %85 = icmp eq i8 %0, 0, !dbg !58
  br i1 %85, label %86, label %97

86:                                               ; preds = %84
  %87 = load i32, i32* %6, align 4, !dbg !84
  %88 = load i32, i32* %7, align 4, !dbg !85
  %89 = load double, double* %5, align 8, !dbg !86
  call void @add_edge({ { [16 x { double, i32 }], i32 }*, i32 }* %10, i32 %87, i32 %88, double %89), !dbg !87
  %90 = load i32, i32* %6, align 4, !dbg !88
  %91 = icmp sgt i32 %83, %90, !dbg !89
  br i1 %91, label %92, label %93, !dbg !90

92:                                               ; preds = %86
  br label %95, !dbg !90

93:                                               ; preds = %86
  %94 = load i32, i32* %6, align 4, !dbg !91
  br label %95, !dbg !90

95:                                               ; preds = %92, %93
  %96 = phi i32 [ %94, %93 ], [ %83, %92 ]
  br label %97, !dbg !90

97:                                               ; preds = %95, %84
  %98 = phi i32 [ %83, %84 ], [ %96, %95 ]
  br label %99

99:                                               ; preds = %97
  %100 = phi i32 [ %98, %97 ]
  br label %101

101:                                              ; preds = %99, %70
  %102 = phi i32 [ %36, %70 ], [ %100, %99 ]
  br label %103, !dbg !75

103:                                              ; preds = %101
  %104 = phi i32 [ %102, %101 ]
  br label %105, !dbg !75

105:                                              ; preds = %103, %67
  %106 = phi i32 [ %36, %67 ], [ %104, %103 ]
  br label %107, !dbg !72

107:                                              ; preds = %105
  %108 = phi i32 [ %106, %105 ]
  br label %109, !dbg !72

109:                                              ; preds = %107, %66
  %110 = phi i32 [ %36, %66 ], [ %108, %107 ]
  br label %111

111:                                              ; preds = %109
  %112 = phi i32 [ %110, %109 ]
  br label %113

113:                                              ; preds = %111
  br label %31, !dbg !54

114:                                              ; preds = %31
  %115 = call i32 @fclose({ i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, {}*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, {}*, {}*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }* %23), !dbg !92
  %116 = getelementptr { { [16 x { double, i32 }], i32 }*, i32 }, { { [16 x { double, i32 }], i32 }*, i32 }* %10, i32 0, i32 1, !dbg !93
  %117 = add i32 %34, 1, !dbg !94
  store i32 %117, i32* %116, align 4, !dbg !95
  store i32 %117, i32* %3, align 4, !dbg !96
  ret { { [16 x { double, i32 }], i32 }*, i32 }* %10, !dbg !97
}

define void @dijkstra({ { [16 x { double, i32 }], i32 }*, i32 }* %0, i32 %1, double* %2) #1 !dbg !98 {
  %4 = alloca { double, i32 }, i64 1, align 8, !dbg !99
  %5 = getelementptr { { [16 x { double, i32 }], i32 }*, i32 }, { { [16 x { double, i32 }], i32 }*, i32 }* %0, i32 0, i32 1, !dbg !101
  %6 = load i32, i32* %5, align 4, !dbg !102
  %7 = call { { double, i32 }**, i32, i32, i32* }* @init_min_heap(i32 %6), !dbg !103
  %8 = getelementptr { { double, i32 }**, i32, i32, i32* }, { { double, i32 }**, i32, i32, i32* }* %7, i32 0, i32 0, !dbg !104
  %9 = getelementptr { { double, i32 }**, i32, i32, i32* }, { { double, i32 }**, i32, i32, i32* }* %7, i32 0, i32 3, !dbg !105
  br label %10, !dbg !106

10:                                               ; preds = %14, %3
  %11 = phi i32 [ %25, %14 ], [ 0, %3 ]
  %12 = load i32, i32* %5, align 4, !dbg !107
  %13 = icmp slt i32 %11, %12, !dbg !108
  br i1 %13, label %14, label %26, !dbg !109

14:                                               ; preds = %10
  %15 = phi i32 [ %11, %10 ]
  %16 = sext i32 %15 to i64, !dbg !110
  %17 = getelementptr double, double* %2, i64 %16, !dbg !111
  %18 = load double, double* @MAX_D, align 8, !dbg !112
  store double %18, double* %17, align 8, !dbg !113
  %19 = load { double, i32 }**, { double, i32 }*** %8, align 8, !dbg !114
  %20 = getelementptr { double, i32 }*, { double, i32 }** %19, i64 %16, !dbg !114
  %21 = load double, double* %17, align 8, !dbg !115
  %22 = call { double, i32 }* @new_heap_node(i32 %15, double %21), !dbg !116
  store { double, i32 }* %22, { double, i32 }** %20, align 8, !dbg !117
  %23 = load i32*, i32** %9, align 8, !dbg !118
  %24 = getelementptr i32, i32* %23, i64 %16, !dbg !118
  store i32 %15, i32* %24, align 4, !dbg !119
  %25 = add i32 %15, 1, !dbg !120
  br label %10, !dbg !109

26:                                               ; preds = %10
  %27 = getelementptr { { double, i32 }**, i32, i32, i32* }, { { double, i32 }**, i32, i32, i32* }* %7, i32 0, i32 1, !dbg !121
  %28 = load i32, i32* %5, align 4, !dbg !122
  store i32 %28, i32* %27, align 4, !dbg !123
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @str7, i32 0, i32 0)), !dbg !124
  %30 = load i32, i32* %27, align 4, !dbg !125
  %31 = add i32 %30, -2, !dbg !126
  %32 = sdiv i32 %31, 2, !dbg !127
  %33 = add i32 %32, 1, !dbg !129
  %34 = sext i32 %33 to i64, !dbg !129
  %35 = sext i32 %32 to i64, !dbg !129
  br label %36, !dbg !129

36:                                               ; preds = %39, %26
  %37 = phi i64 [ 0, %26 ], [ %43, %39 ]
  %38 = icmp slt i64 %37, %34, !dbg !129
  br i1 %38, label %39, label %44, !dbg !129

39:                                               ; preds = %36
  %40 = mul i64 %37, -1, !dbg !129
  %41 = add i64 %35, %40, !dbg !129
  %42 = trunc i64 %41 to i32, !dbg !129
  call void @heapify({ { double, i32 }**, i32, i32, i32* }* %7, i32 %42), !dbg !130
  %43 = add i64 %37, 1, !dbg !129
  br label %36, !dbg !129

44:                                               ; preds = %36
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @str8, i32 0, i32 0)), !dbg !131
  %46 = sext i32 %1 to i64, !dbg !132
  %47 = getelementptr double, double* %2, i64 %46, !dbg !133
  store double 0.000000e+00, double* %47, align 8, !dbg !134
  call void @decrease_key({ { double, i32 }**, i32, i32, i32* }* %7, i32 %1, double 0.000000e+00), !dbg !135
  br label %48, !dbg !136

48:                                               ; preds = %113, %44
  %49 = phi i1 [ %64, %113 ], [ true, %44 ]
  %50 = load i32, i32* %27, align 4, !dbg !137
  %51 = icmp eq i32 %50, 0, !dbg !138
  %52 = sext i1 %51 to i32, !dbg !138
  %53 = icmp eq i32 %52, 0, !dbg !139
  %54 = and i1 %53, %49, !dbg !140
  br i1 %54, label %55, label %114, !dbg !140

55:                                               ; preds = %48
  %56 = call { double, i32 }* @extract_min({ { double, i32 }**, i32, i32, i32* }* %7), !dbg !141
  %57 = getelementptr { double, i32 }, { double, i32 }* %56, i32 0, i32 1, !dbg !142
  %58 = load i32, i32* %57, align 4, !dbg !143
  %59 = sext i32 %58 to i64, !dbg !144
  %60 = getelementptr double, double* %2, i64 %59, !dbg !145
  %61 = load double, double* %60, align 8, !dbg !145
  %62 = load double, double* @MAX_D, align 8, !dbg !146
  %63 = fcmp oge double %61, %62, !dbg !147
  %64 = xor i1 %63, true, !dbg !148
  br i1 %63, label %65, label %66

65:                                               ; preds = %69, %55
  br label %112

66:                                               ; preds = %55
  %67 = getelementptr { { [16 x { double, i32 }], i32 }*, i32 }, { { [16 x { double, i32 }], i32 }*, i32 }* %0, i32 0, i32 0, !dbg !149
  %68 = getelementptr { double, i32 }, { double, i32 }* %4, i32 0, i32 1, !dbg !150
  br label %69, !dbg !149

69:                                               ; preds = %110, %66
  %70 = phi i32 [ %111, %110 ], [ 0, %66 ]
  %71 = load { [16 x { double, i32 }], i32 }*, { [16 x { double, i32 }], i32 }** %67, align 8, !dbg !151
  %72 = getelementptr { [16 x { double, i32 }], i32 }, { [16 x { double, i32 }], i32 }* %71, i64 %59, !dbg !151
  %73 = getelementptr { [16 x { double, i32 }], i32 }, { [16 x { double, i32 }], i32 }* %72, i32 0, i32 1, !dbg !152
  %74 = load i32, i32* %73, align 4, !dbg !151
  %75 = icmp slt i32 %70, %74, !dbg !153
  br i1 %75, label %76, label %65, !dbg !154

76:                                               ; preds = %69
  %77 = phi i32 [ %70, %69 ]
  %78 = load { [16 x { double, i32 }], i32 }*, { [16 x { double, i32 }], i32 }** %67, align 8, !dbg !155
  %79 = getelementptr { [16 x { double, i32 }], i32 }, { [16 x { double, i32 }], i32 }* %78, i64 %59, !dbg !155
  %80 = getelementptr { [16 x { double, i32 }], i32 }, { [16 x { double, i32 }], i32 }* %79, i32 0, i32 0, !dbg !156
  %81 = getelementptr [16 x { double, i32 }], [16 x { double, i32 }]* %80, i32 0, i32 0, !dbg !155
  %82 = sext i32 %77 to i64, !dbg !157
  %83 = getelementptr { double, i32 }, { double, i32 }* %81, i64 %82, !dbg !155
  %84 = load { double, i32 }, { double, i32 }* %83, align 8, !dbg !155
  store { double, i32 } %84, { double, i32 }* %4, align 8, !dbg !99
  %85 = load i32, i32* %68, align 4, !dbg !158
  %86 = load i32*, i32** %9, align 8, !dbg !159
  %87 = sext i32 %85 to i64, !dbg !160
  %88 = getelementptr i32, i32* %86, i64 %87, !dbg !159
  %89 = load i32, i32* %88, align 4, !dbg !159
  %90 = load i32, i32* %27, align 4, !dbg !161
  %91 = icmp slt i32 %89, %90, !dbg !162
  br i1 %91, label %92, label %110, !dbg !163

92:                                               ; preds = %76
  %93 = getelementptr double, double* %2, i64 %87, !dbg !164
  %94 = load double, double* %93, align 8, !dbg !165
  %95 = getelementptr { double, i32 }, { double, i32 }* %4, i32 0, i32 0, !dbg !166
  %96 = load double, double* %95, align 8, !dbg !167
  %97 = load double, double* %60, align 8, !dbg !168
  %98 = fadd double %96, %97, !dbg !169
  %99 = fcmp olt double %94, %98, !dbg !170
  br i1 %99, label %100, label %102, !dbg !165

100:                                              ; preds = %92
  %101 = load double, double* %93, align 8, !dbg !171
  br label %106, !dbg !165

102:                                              ; preds = %92
  %103 = load double, double* %95, align 8, !dbg !167
  %104 = load double, double* %60, align 8, !dbg !168
  %105 = fadd double %103, %104, !dbg !169
  br label %106, !dbg !165

106:                                              ; preds = %100, %102
  %107 = phi double [ %105, %102 ], [ %101, %100 ]
  br label %108, !dbg !165

108:                                              ; preds = %106
  store double %107, double* %93, align 8, !dbg !172
  %109 = load double, double* %93, align 8, !dbg !173
  call void @decrease_key({ { double, i32 }**, i32, i32, i32* }* %7, i32 %85, double %109), !dbg !174
  br label %110, !dbg !163

110:                                              ; preds = %108, %76
  %111 = add i32 %77, 1, !dbg !175
  br label %69, !dbg !154

112:                                              ; preds = %65
  br label %113

113:                                              ; preds = %112
  br label %48, !dbg !140

114:                                              ; preds = %48
  ret void, !dbg !176
}

declare void @exit(i32) #1

define void @add_edge({ { [16 x { double, i32 }], i32 }*, i32 }* %0, i32 %1, i32 %2, double %3) #1 !dbg !177 {
  %5 = alloca { double, i32 }, i64 1, align 8
  %6 = getelementptr { { [16 x { double, i32 }], i32 }*, i32 }, { { [16 x { double, i32 }], i32 }*, i32 }* %0, i32 0, i32 0, !dbg !178
  %7 = load { [16 x { double, i32 }], i32 }*, { [16 x { double, i32 }], i32 }** %6, align 8, !dbg !180
  %8 = sext i32 %1 to i64, !dbg !181
  %9 = getelementptr { [16 x { double, i32 }], i32 }, { [16 x { double, i32 }], i32 }* %7, i64 %8, !dbg !180
  %10 = getelementptr { [16 x { double, i32 }], i32 }, { [16 x { double, i32 }], i32 }* %9, i32 0, i32 1, !dbg !182
  %11 = load i32, i32* %10, align 4, !dbg !180
  %12 = icmp sge i32 %11, 16, !dbg !183
  br i1 %12, label %13, label %15, !dbg !184

13:                                               ; preds = %4
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @str9, i32 0, i32 0), i32 %1), !dbg !185
  call void @exit(i32 1), !dbg !186
  br label %15, !dbg !184

15:                                               ; preds = %13, %4
  %16 = load { [16 x { double, i32 }], i32 }*, { [16 x { double, i32 }], i32 }** %6, align 8, !dbg !187
  %17 = getelementptr { [16 x { double, i32 }], i32 }, { [16 x { double, i32 }], i32 }* %16, i64 %8, !dbg !187
  %18 = getelementptr { [16 x { double, i32 }], i32 }, { [16 x { double, i32 }], i32 }* %17, i32 0, i32 0, !dbg !188
  %19 = getelementptr [16 x { double, i32 }], [16 x { double, i32 }]* %18, i32 0, i32 0, !dbg !187
  %20 = getelementptr { [16 x { double, i32 }], i32 }, { [16 x { double, i32 }], i32 }* %17, i32 0, i32 1, !dbg !189
  %21 = load i32, i32* %20, align 4, !dbg !190
  %22 = add i32 %21, 1, !dbg !190
  store i32 %22, i32* %20, align 4, !dbg !190
  %23 = sext i32 %21 to i64, !dbg !191
  %24 = getelementptr { double, i32 }, { double, i32 }* %19, i64 %23, !dbg !187
  %25 = getelementptr { double, i32 }, { double, i32 }* %5, i32 0, i32 0
  store double %3, double* %25, align 8
  %26 = getelementptr { double, i32 }, { double, i32 }* %5, i32 0, i32 1
  store i32 %2, i32* %26, align 4
  %27 = load { double, i32 }, { double, i32 }* %5, align 8, !dbg !192
  store { double, i32 } %27, { double, i32 }* %24, align 8, !dbg !193
  ret void, !dbg !194
}

define { { double, i32 }**, i32, i32, i32* }* @init_min_heap(i32 %0) #1 !dbg !195 {
  %2 = call noalias noundef i8* @malloc(i64 24), !dbg !196
  %3 = bitcast i8* %2 to { { double, i32 }**, i32, i32, i32* }*, !dbg !196
  %4 = getelementptr { { double, i32 }**, i32, i32, i32* }, { { double, i32 }**, i32, i32, i32* }* %3, i32 0, i32 3, !dbg !198
  %5 = sext i32 %0 to i64, !dbg !199
  %6 = mul i64 %5, 4, !dbg !200
  %7 = call noalias noundef i8* @malloc(i64 %6), !dbg !201
  %8 = bitcast i8* %7 to i32*, !dbg !201
  store i32* %8, i32** %4, align 8, !dbg !202
  %9 = getelementptr { { double, i32 }**, i32, i32, i32* }, { { double, i32 }**, i32, i32, i32* }* %3, i32 0, i32 1, !dbg !203
  store i32 0, i32* %9, align 4, !dbg !204
  %10 = getelementptr { { double, i32 }**, i32, i32, i32* }, { { double, i32 }**, i32, i32, i32* }* %3, i32 0, i32 2, !dbg !205
  store i32 %0, i32* %10, align 4, !dbg !206
  %11 = getelementptr { { double, i32 }**, i32, i32, i32* }, { { double, i32 }**, i32, i32, i32* }* %3, i32 0, i32 0, !dbg !207
  %12 = mul i64 %5, 8, !dbg !208
  %13 = call noalias noundef i8* @malloc(i64 %12), !dbg !209
  %14 = bitcast i8* %13 to { double, i32 }**, !dbg !209
  store { double, i32 }** %14, { double, i32 }*** %11, align 8, !dbg !210
  ret { { double, i32 }**, i32, i32, i32* }* %3, !dbg !211
}

define { double, i32 }* @new_heap_node(i32 %0, double %1) #1 !dbg !212 {
  %3 = call noalias noundef i8* @malloc(i64 16), !dbg !213
  %4 = bitcast i8* %3 to { double, i32 }*, !dbg !213
  %5 = getelementptr { double, i32 }, { double, i32 }* %4, i32 0, i32 1, !dbg !215
  store i32 %0, i32* %5, align 4, !dbg !216
  %6 = getelementptr { double, i32 }, { double, i32 }* %4, i32 0, i32 0, !dbg !217
  store double %1, double* %6, align 8, !dbg !218
  ret { double, i32 }* %4, !dbg !219
}

define void @heapify({ { double, i32 }**, i32, i32, i32* }* %0, i32 %1) #1 !dbg !220 {
  %3 = shl i32 %1, 1, !dbg !221
  %4 = add i32 %3, 1, !dbg !223
  %5 = add i32 %3, 2, !dbg !224
  %6 = getelementptr { { double, i32 }**, i32, i32, i32* }, { { double, i32 }**, i32, i32, i32* }* %0, i32 0, i32 1, !dbg !225
  %7 = load i32, i32* %6, align 4, !dbg !226
  %8 = icmp slt i32 %4, %7, !dbg !227
  br i1 %8, label %9, label %24, !dbg !228

9:                                                ; preds = %2
  %10 = getelementptr { { double, i32 }**, i32, i32, i32* }, { { double, i32 }**, i32, i32, i32* }* %0, i32 0, i32 0, !dbg !229
  %11 = load { double, i32 }**, { double, i32 }*** %10, align 8, !dbg !230
  %12 = sext i32 %4 to i64, !dbg !231
  %13 = getelementptr { double, i32 }*, { double, i32 }** %11, i64 %12, !dbg !230
  %14 = load { double, i32 }*, { double, i32 }** %13, align 8, !dbg !230
  %15 = getelementptr { double, i32 }, { double, i32 }* %14, i32 0, i32 0, !dbg !232
  %16 = load double, double* %15, align 8, !dbg !230
  %17 = sext i32 %1 to i64, !dbg !233
  %18 = getelementptr { double, i32 }*, { double, i32 }** %11, i64 %17, !dbg !234
  %19 = load { double, i32 }*, { double, i32 }** %18, align 8, !dbg !234
  %20 = getelementptr { double, i32 }, { double, i32 }* %19, i32 0, i32 0, !dbg !235
  %21 = load double, double* %20, align 8, !dbg !234
  %22 = fcmp olt double %16, %21, !dbg !236
  %23 = select i1 %22, i32 %4, i32 %1, !dbg !237
  br label %25, !dbg !228

24:                                               ; preds = %2
  br label %25, !dbg !228

25:                                               ; preds = %9, %24
  %26 = phi i32 [ %1, %24 ], [ %23, %9 ]
  br label %27, !dbg !228

27:                                               ; preds = %25
  %28 = load i32, i32* %6, align 4, !dbg !238
  %29 = icmp slt i32 %5, %28, !dbg !239
  br i1 %29, label %30, label %45, !dbg !240

30:                                               ; preds = %27
  %31 = getelementptr { { double, i32 }**, i32, i32, i32* }, { { double, i32 }**, i32, i32, i32* }* %0, i32 0, i32 0, !dbg !241
  %32 = load { double, i32 }**, { double, i32 }*** %31, align 8, !dbg !242
  %33 = sext i32 %5 to i64, !dbg !243
  %34 = getelementptr { double, i32 }*, { double, i32 }** %32, i64 %33, !dbg !242
  %35 = load { double, i32 }*, { double, i32 }** %34, align 8, !dbg !242
  %36 = getelementptr { double, i32 }, { double, i32 }* %35, i32 0, i32 0, !dbg !244
  %37 = load double, double* %36, align 8, !dbg !242
  %38 = sext i32 %26 to i64, !dbg !245
  %39 = getelementptr { double, i32 }*, { double, i32 }** %32, i64 %38, !dbg !246
  %40 = load { double, i32 }*, { double, i32 }** %39, align 8, !dbg !246
  %41 = getelementptr { double, i32 }, { double, i32 }* %40, i32 0, i32 0, !dbg !247
  %42 = load double, double* %41, align 8, !dbg !246
  %43 = fcmp olt double %37, %42, !dbg !248
  %44 = select i1 %43, i32 %5, i32 %26, !dbg !249
  br label %46, !dbg !240

45:                                               ; preds = %27
  br label %46, !dbg !240

46:                                               ; preds = %30, %45
  %47 = phi i32 [ %26, %45 ], [ %44, %30 ]
  br label %48, !dbg !240

48:                                               ; preds = %46
  %49 = icmp ne i32 %47, %1, !dbg !250
  br i1 %49, label %50, label %73

50:                                               ; preds = %48
  %51 = getelementptr { { double, i32 }**, i32, i32, i32* }, { { double, i32 }**, i32, i32, i32* }* %0, i32 0, i32 0, !dbg !251
  %52 = load { double, i32 }**, { double, i32 }*** %51, align 8, !dbg !252
  %53 = sext i32 %47 to i64, !dbg !253
  %54 = getelementptr { double, i32 }*, { double, i32 }** %52, i64 %53, !dbg !252
  %55 = load { double, i32 }*, { double, i32 }** %54, align 8, !dbg !252
  %56 = sext i32 %1 to i64, !dbg !254
  %57 = getelementptr { double, i32 }*, { double, i32 }** %52, i64 %56, !dbg !255
  %58 = load { double, i32 }*, { double, i32 }** %57, align 8, !dbg !255
  %59 = getelementptr { { double, i32 }**, i32, i32, i32* }, { { double, i32 }**, i32, i32, i32* }* %0, i32 0, i32 3, !dbg !256
  %60 = load i32*, i32** %59, align 8, !dbg !257
  %61 = getelementptr { double, i32 }, { double, i32 }* %55, i32 0, i32 1, !dbg !258
  %62 = load i32, i32* %61, align 4, !dbg !259
  %63 = sext i32 %62 to i64, !dbg !260
  %64 = getelementptr i32, i32* %60, i64 %63, !dbg !257
  store i32 %1, i32* %64, align 4, !dbg !261
  %65 = load i32*, i32** %59, align 8, !dbg !262
  %66 = getelementptr { double, i32 }, { double, i32 }* %58, i32 0, i32 1, !dbg !263
  %67 = load i32, i32* %66, align 4, !dbg !264
  %68 = sext i32 %67 to i64, !dbg !265
  %69 = getelementptr i32, i32* %65, i64 %68, !dbg !262
  store i32 %47, i32* %69, align 4, !dbg !266
  %70 = load { double, i32 }**, { double, i32 }*** %51, align 8, !dbg !267
  %71 = getelementptr { double, i32 }*, { double, i32 }** %70, i64 %53, !dbg !267
  %72 = getelementptr { double, i32 }*, { double, i32 }** %70, i64 %56, !dbg !268
  call void @swap_heap_node({ double, i32 }** %71, { double, i32 }** %72), !dbg !269
  call void @heapify({ { double, i32 }**, i32, i32, i32* }* %0, i32 %47), !dbg !270
  br label %73

73:                                               ; preds = %50, %48
  ret void, !dbg !271
}

define void @decrease_key({ { double, i32 }**, i32, i32, i32* }* %0, i32 %1, double %2) #1 !dbg !272 {
  %4 = getelementptr { { double, i32 }**, i32, i32, i32* }, { { double, i32 }**, i32, i32, i32* }* %0, i32 0, i32 3, !dbg !273
  %5 = load i32*, i32** %4, align 8, !dbg !275
  %6 = sext i32 %1 to i64, !dbg !276
  %7 = getelementptr i32, i32* %5, i64 %6, !dbg !275
  %8 = load i32, i32* %7, align 4, !dbg !275
  %9 = getelementptr { { double, i32 }**, i32, i32, i32* }, { { double, i32 }**, i32, i32, i32* }* %0, i32 0, i32 0, !dbg !277
  %10 = load { double, i32 }**, { double, i32 }*** %9, align 8, !dbg !278
  %11 = sext i32 %8 to i64, !dbg !279
  %12 = getelementptr { double, i32 }*, { double, i32 }** %10, i64 %11, !dbg !278
  %13 = load { double, i32 }*, { double, i32 }** %12, align 8, !dbg !278
  %14 = getelementptr { double, i32 }, { double, i32 }* %13, i32 0, i32 0, !dbg !280
  store double %2, double* %14, align 8, !dbg !281
  br label %15, !dbg !282

15:                                               ; preds = %60, %3
  %16 = phi i32 [ %59, %60 ], [ %8, %3 ]
  %17 = icmp ne i32 %16, 0, !dbg !282
  br i1 %17, label %18, label %54, !dbg !282

18:                                               ; preds = %15
  %19 = load { double, i32 }**, { double, i32 }*** %9, align 8, !dbg !283
  %20 = sext i32 %16 to i64, !dbg !284
  %21 = getelementptr { double, i32 }*, { double, i32 }** %19, i64 %20, !dbg !283
  %22 = load { double, i32 }*, { double, i32 }** %21, align 8, !dbg !283
  %23 = getelementptr { double, i32 }, { double, i32 }* %22, i32 0, i32 0, !dbg !285
  %24 = load double, double* %23, align 8, !dbg !283
  %25 = add i32 %16, -1, !dbg !286
  %26 = sdiv i32 %25, 2, !dbg !287
  %27 = sext i32 %26 to i64, !dbg !288
  %28 = getelementptr { double, i32 }*, { double, i32 }** %19, i64 %27, !dbg !289
  %29 = load { double, i32 }*, { double, i32 }** %28, align 8, !dbg !289
  %30 = getelementptr { double, i32 }, { double, i32 }* %29, i32 0, i32 0, !dbg !290
  %31 = load double, double* %30, align 8, !dbg !289
  %32 = fcmp olt double %24, %31, !dbg !291
  %33 = select i1 %32, i32 %26, i32 %16, !dbg !292
  br i1 %32, label %34, label %54, !dbg !292

34:                                               ; preds = %18
  %35 = load i32*, i32** %4, align 8, !dbg !293
  %36 = load { double, i32 }**, { double, i32 }*** %9, align 8, !dbg !294
  %37 = getelementptr { double, i32 }*, { double, i32 }** %36, i64 %20, !dbg !294
  %38 = load { double, i32 }*, { double, i32 }** %37, align 8, !dbg !294
  %39 = getelementptr { double, i32 }, { double, i32 }* %38, i32 0, i32 1, !dbg !295
  %40 = load i32, i32* %39, align 4, !dbg !294
  %41 = sext i32 %40 to i64, !dbg !296
  %42 = getelementptr i32, i32* %35, i64 %41, !dbg !293
  store i32 %26, i32* %42, align 4, !dbg !297
  %43 = load i32*, i32** %4, align 8, !dbg !298
  %44 = load { double, i32 }**, { double, i32 }*** %9, align 8, !dbg !299
  %45 = getelementptr { double, i32 }*, { double, i32 }** %44, i64 %27, !dbg !299
  %46 = load { double, i32 }*, { double, i32 }** %45, align 8, !dbg !299
  %47 = getelementptr { double, i32 }, { double, i32 }* %46, i32 0, i32 1, !dbg !300
  %48 = load i32, i32* %47, align 4, !dbg !299
  %49 = sext i32 %48 to i64, !dbg !301
  %50 = getelementptr i32, i32* %43, i64 %49, !dbg !298
  store i32 %16, i32* %50, align 4, !dbg !302
  %51 = load { double, i32 }**, { double, i32 }*** %9, align 8, !dbg !303
  %52 = getelementptr { double, i32 }*, { double, i32 }** %51, i64 %20, !dbg !303
  %53 = getelementptr { double, i32 }*, { double, i32 }** %51, i64 %27, !dbg !304
  call void @swap_heap_node({ double, i32 }** %52, { double, i32 }** %53), !dbg !305
  br label %54, !dbg !292

54:                                               ; preds = %34, %18, %15
  %55 = phi i1 [ false, %15 ], [ %32, %18 ], [ %32, %34 ]
  %56 = phi i32 [ %16, %15 ], [ %33, %18 ], [ %33, %34 ]
  br label %57, !dbg !282

57:                                               ; preds = %54
  %58 = phi i1 [ %55, %54 ]
  %59 = phi i32 [ %56, %54 ]
  br label %60, !dbg !282

60:                                               ; preds = %57
  br i1 %58, label %15, label %61, !dbg !292

61:                                               ; preds = %60
  ret void, !dbg !306
}

define { double, i32 }* @extract_min({ { double, i32 }**, i32, i32, i32* }* %0) #1 !dbg !307 {
  %2 = getelementptr { { double, i32 }**, i32, i32, i32* }, { { double, i32 }**, i32, i32, i32* }* %0, i32 0, i32 1, !dbg !308
  %3 = load i32, i32* %2, align 4, !dbg !310
  %4 = icmp eq i32 %3, 0, !dbg !311
  br i1 %4, label %5, label %6, !dbg !312

5:                                                ; preds = %1
  br label %30, !dbg !312

6:                                                ; preds = %1
  %7 = getelementptr { { double, i32 }**, i32, i32, i32* }, { { double, i32 }**, i32, i32, i32* }* %0, i32 0, i32 0, !dbg !313
  %8 = load { double, i32 }**, { double, i32 }*** %7, align 8, !dbg !314
  %9 = load { double, i32 }*, { double, i32 }** %8, align 8, !dbg !314
  %10 = load i32, i32* %2, align 4, !dbg !315
  %11 = add i32 %10, -1, !dbg !316
  %12 = sext i32 %11 to i64, !dbg !317
  %13 = getelementptr { double, i32 }*, { double, i32 }** %8, i64 %12, !dbg !315
  %14 = load { double, i32 }*, { double, i32 }** %13, align 8, !dbg !318
  store { double, i32 }* %14, { double, i32 }** %8, align 8, !dbg !319
  %15 = getelementptr { { double, i32 }**, i32, i32, i32* }, { { double, i32 }**, i32, i32, i32* }* %0, i32 0, i32 3, !dbg !320
  %16 = load i32*, i32** %15, align 8, !dbg !321
  %17 = getelementptr { double, i32 }, { double, i32 }* %9, i32 0, i32 1, !dbg !322
  %18 = load i32, i32* %17, align 4, !dbg !323
  %19 = sext i32 %18 to i64, !dbg !324
  %20 = getelementptr i32, i32* %16, i64 %19, !dbg !321
  %21 = load i32, i32* %2, align 4, !dbg !325
  %22 = add i32 %21, -1, !dbg !326
  store i32 %22, i32* %20, align 4, !dbg !327
  %23 = load i32*, i32** %15, align 8, !dbg !328
  %24 = getelementptr { double, i32 }, { double, i32 }* %14, i32 0, i32 1, !dbg !329
  %25 = load i32, i32* %24, align 4, !dbg !330
  %26 = sext i32 %25 to i64, !dbg !331
  %27 = getelementptr i32, i32* %23, i64 %26, !dbg !328
  store i32 0, i32* %27, align 4, !dbg !332
  %28 = load i32, i32* %2, align 4, !dbg !333
  %29 = add i32 %28, -1, !dbg !333
  store i32 %29, i32* %2, align 4, !dbg !333
  call void @heapify({ { double, i32 }**, i32, i32, i32* }* %0, i32 0), !dbg !334
  br label %30, !dbg !312

30:                                               ; preds = %5, %6
  %31 = phi { double, i32 }* [ %9, %6 ], [ null, %5 ]
  br label %32, !dbg !312

32:                                               ; preds = %30
  ret { double, i32 }* %31, !dbg !335
}

define void @swap_heap_node({ double, i32 }** %0, { double, i32 }** %1) #1 !dbg !336 {
  %3 = load { double, i32 }*, { double, i32 }** %0, align 8, !dbg !337
  %4 = load { double, i32 }*, { double, i32 }** %1, align 8, !dbg !339
  store { double, i32 }* %4, { double, i32 }** %0, align 8, !dbg !340
  store { double, i32 }* %3, { double, i32 }** %1, align 8, !dbg !341
  ret void, !dbg !342
}

attributes #0 = { inaccessiblememonly mustprogress nofree nounwind willreturn "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "main", linkageName: "main", scope: null, file: !4, line: 48, type: !5, scopeLine: 48, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!4 = !DIFile(filename: "SSSP.c", directory: "/users/Zijian/Disagg-mlir/tools/disagg/origin/graphC")
!5 = !DISubroutineType(types: !6)
!6 = !{}
!7 = !DILocation(line: 50, column: 3, scope: !8)
!8 = !DILexicalBlockFile(scope: !3, file: !4, discriminator: 0)
!9 = !DILocation(line: 51, column: 29, scope: !8)
!10 = !DILocation(line: 51, column: 24, scope: !8)
!11 = !DILocation(line: 52, column: 24, scope: !8)
!12 = !DILocation(line: 52, column: 19, scope: !8)
!13 = !DILocation(line: 54, column: 25, scope: !8)
!14 = !DILocation(line: 54, column: 41, scope: !8)
!15 = !DILocation(line: 54, column: 52, scope: !8)
!16 = !DILocation(line: 54, column: 14, scope: !8)
!17 = !DILocation(line: 55, column: 52, scope: !8)
!18 = !DILocation(line: 55, column: 49, scope: !8)
!19 = !DILocation(line: 55, column: 47, scope: !8)
!20 = !DILocation(line: 55, column: 22, scope: !8)
!21 = !DILocation(line: 56, column: 3, scope: !8)
!22 = !DILocation(line: 58, column: 15, scope: !8)
!23 = !DILocation(line: 59, column: 23, scope: !8)
!24 = !DILocation(line: 59, column: 21, scope: !8)
!25 = !DILocation(line: 59, column: 3, scope: !8)
!26 = !DILocation(line: 62, column: 37, scope: !8)
!27 = !DILocation(line: 62, column: 27, scope: !8)
!28 = !DILocation(line: 62, column: 5, scope: !8)
!29 = !DILocation(line: 59, column: 32, scope: !8)
!30 = !DILocation(line: 64, column: 3, scope: !8)
!31 = !DILocation(line: 66, column: 1, scope: !8)
!32 = distinct !DISubprogram(name: "init_graph", linkageName: "init_graph", scope: null, file: !33, line: 41, type: !5, scopeLine: 41, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!33 = !DIFile(filename: "./util.h", directory: "/users/Zijian/Disagg-mlir/tools/disagg/origin/graphC")
!34 = !DILocation(line: 63, column: 3, scope: !35)
!35 = !DILexicalBlockFile(scope: !32, file: !33, discriminator: 0)
!36 = !DILocation(line: 58, column: 3, scope: !35)
!37 = !DILocation(line: 43, column: 21, scope: !35)
!38 = !DILocation(line: 44, column: 6, scope: !35)
!39 = !DILocation(line: 44, column: 10, scope: !35)
!40 = !DILocation(line: 44, column: 8, scope: !35)
!41 = !DILocation(line: 46, column: 21, scope: !35)
!42 = !DILocation(line: 48, column: 5, scope: !35)
!43 = !DILocation(line: 48, column: 13, scope: !35)
!44 = !DILocation(line: 48, column: 20, scope: !35)
!45 = !DILocation(line: 51, column: 16, scope: !35)
!46 = !DILocation(line: 53, column: 12, scope: !35)
!47 = !DILocation(line: 53, column: 3, scope: !35)
!48 = !DILocation(line: 55, column: 5, scope: !35)
!49 = !DILocation(line: 56, column: 5, scope: !35)
!50 = !DILocation(line: 59, column: 19, scope: !35)
!51 = !DILocation(line: 59, column: 13, scope: !35)
!52 = !DILocation(line: 59, column: 7, scope: !35)
!53 = !DILocation(line: 67, column: 9, scope: !35)
!54 = !DILocation(line: 65, column: 8, scope: !35)
!55 = !DILocation(line: 67, column: 5, scope: !35)
!56 = !DILocation(line: 75, column: 11, scope: !35)
!57 = !DILocation(line: 75, column: 47, scope: !35)
!58 = !DILocation(line: 0, scope: !35)
!59 = !DILocation(line: 75, column: 7, scope: !35)
!60 = !DILocation(line: 76, column: 11, scope: !35)
!61 = !DILocation(line: 77, column: 28, scope: !35)
!62 = !DILocation(line: 77, column: 25, scope: !35)
!63 = !DILocation(line: 77, column: 15, scope: !35)
!64 = !DILocation(line: 77, column: 41, scope: !35)
!65 = !DILocation(line: 78, column: 12, scope: !35)
!66 = !DILocation(line: 78, column: 11, scope: !35)
!67 = !DILocation(line: 78, column: 21, scope: !35)
!68 = !DILocation(line: 78, column: 9, scope: !35)
!69 = !DILocation(line: 70, column: 11, scope: !35)
!70 = !DILocation(line: 80, column: 9, scope: !35)
!71 = !DILocation(line: 80, column: 13, scope: !35)
!72 = !DILocation(line: 80, column: 21, scope: !35)
!73 = !DILocation(line: 80, column: 24, scope: !35)
!74 = !DILocation(line: 80, column: 28, scope: !35)
!75 = !DILocation(line: 80, column: 5, scope: !35)
!76 = !DILocation(line: 83, column: 19, scope: !35)
!77 = !DILocation(line: 83, column: 24, scope: !35)
!78 = !DILocation(line: 83, column: 29, scope: !35)
!79 = !DILocation(line: 83, column: 7, scope: !35)
!80 = !DILocation(line: 84, column: 28, scope: !35)
!81 = !DILocation(line: 84, column: 26, scope: !35)
!82 = !DILocation(line: 84, column: 17, scope: !35)
!83 = !DILocation(line: 84, column: 45, scope: !35)
!84 = !DILocation(line: 88, column: 21, scope: !35)
!85 = !DILocation(line: 88, column: 26, scope: !35)
!86 = !DILocation(line: 88, column: 31, scope: !35)
!87 = !DILocation(line: 88, column: 9, scope: !35)
!88 = !DILocation(line: 89, column: 30, scope: !35)
!89 = !DILocation(line: 89, column: 28, scope: !35)
!90 = !DILocation(line: 89, column: 19, scope: !35)
!91 = !DILocation(line: 89, column: 47, scope: !35)
!92 = !DILocation(line: 93, column: 3, scope: !35)
!93 = !DILocation(line: 94, column: 6, scope: !35)
!94 = !DILocation(line: 94, column: 18, scope: !35)
!95 = !DILocation(line: 94, column: 8, scope: !35)
!96 = !DILocation(line: 95, column: 12, scope: !35)
!97 = !DILocation(line: 98, column: 1, scope: !35)
!98 = distinct !DISubprogram(name: "dijkstra", linkageName: "dijkstra", scope: null, file: !4, line: 11, type: !5, scopeLine: 11, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!99 = !DILocation(line: 36, column: 7, scope: !100)
!100 = !DILexicalBlockFile(scope: !98, file: !4, discriminator: 0)
!101 = !DILocation(line: 13, column: 40, scope: !100)
!102 = !DILocation(line: 13, column: 33, scope: !100)
!103 = !DILocation(line: 13, column: 19, scope: !100)
!104 = !DILocation(line: 17, column: 11, scope: !100)
!105 = !DILocation(line: 18, column: 11, scope: !100)
!106 = !DILocation(line: 14, column: 34, scope: !100)
!107 = !DILocation(line: 14, column: 27, scope: !100)
!108 = !DILocation(line: 14, column: 25, scope: !100)
!109 = !DILocation(line: 14, column: 3, scope: !100)
!110 = !DILocation(line: 16, column: 17, scope: !100)
!111 = !DILocation(line: 16, column: 5, scope: !100)
!112 = !DILocation(line: 16, column: 21, scope: !100)
!113 = !DILocation(line: 16, column: 19, scope: !100)
!114 = !DILocation(line: 17, column: 5, scope: !100)
!115 = !DILocation(line: 17, column: 43, scope: !100)
!116 = !DILocation(line: 17, column: 24, scope: !100)
!117 = !DILocation(line: 17, column: 22, scope: !100)
!118 = !DILocation(line: 18, column: 5, scope: !100)
!119 = !DILocation(line: 18, column: 20, scope: !100)
!120 = !DILocation(line: 14, column: 37, scope: !100)
!121 = !DILocation(line: 20, column: 9, scope: !100)
!122 = !DILocation(line: 20, column: 16, scope: !100)
!123 = !DILocation(line: 20, column: 14, scope: !100)
!124 = !DILocation(line: 21, column: 3, scope: !100)
!125 = !DILocation(line: 22, column: 27, scope: !100)
!126 = !DILocation(line: 0, scope: !98)
!127 = !DILocation(line: 108, column: 30, scope: !128)
!128 = !DILexicalBlockFile(scope: !98, file: !33, discriminator: 0)
!129 = !DILocation(line: 22, column: 46, scope: !100)
!130 = !DILocation(line: 22, column: 57, scope: !100)
!131 = !DILocation(line: 23, column: 3, scope: !100)
!132 = !DILocation(line: 25, column: 15, scope: !100)
!133 = !DILocation(line: 25, column: 3, scope: !100)
!134 = !DILocation(line: 25, column: 17, scope: !100)
!135 = !DILocation(line: 26, column: 3, scope: !100)
!136 = !DILocation(line: 111, column: 38, scope: !128)
!137 = !DILocation(line: 111, column: 30, scope: !128)
!138 = !DILocation(line: 111, column: 43, scope: !128)
!139 = !DILocation(line: 0, scope: !100)
!140 = !DILocation(line: 28, column: 9, scope: !100)
!141 = !DILocation(line: 30, column: 29, scope: !100)
!142 = !DILocation(line: 31, column: 22, scope: !100)
!143 = !DILocation(line: 31, column: 12, scope: !100)
!144 = !DILocation(line: 33, column: 19, scope: !100)
!145 = !DILocation(line: 33, column: 9, scope: !100)
!146 = !DILocation(line: 33, column: 24, scope: !100)
!147 = !DILocation(line: 33, column: 21, scope: !100)
!148 = !DILocation(line: 33, column: 5, scope: !100)
!149 = !DILocation(line: 34, column: 32, scope: !100)
!150 = !DILocation(line: 38, column: 21, scope: !100)
!151 = !DILocation(line: 34, column: 25, scope: !100)
!152 = !DILocation(line: 34, column: 37, scope: !100)
!153 = !DILocation(line: 34, column: 23, scope: !100)
!154 = !DILocation(line: 34, column: 5, scope: !100)
!155 = !DILocation(line: 36, column: 23, scope: !100)
!156 = !DILocation(line: 36, column: 35, scope: !100)
!157 = !DILocation(line: 36, column: 47, scope: !100)
!158 = !DILocation(line: 38, column: 17, scope: !100)
!159 = !DILocation(line: 112, column: 33, scope: !128)
!160 = !DILocation(line: 112, column: 48, scope: !128)
!161 = !DILocation(line: 112, column: 52, scope: !128)
!162 = !DILocation(line: 112, column: 50, scope: !128)
!163 = !DILocation(line: 39, column: 7, scope: !100)
!164 = !DILocation(line: 41, column: 9, scope: !100)
!165 = !DILocation(line: 6, column: 22, scope: !100)
!166 = !DILocation(line: 41, column: 50, scope: !100)
!167 = !DILocation(line: 41, column: 46, scope: !100)
!168 = !DILocation(line: 41, column: 54, scope: !100)
!169 = !DILocation(line: 41, column: 52, scope: !100)
!170 = !DILocation(line: 6, column: 26, scope: !100)
!171 = !DILocation(line: 6, column: 34, scope: !100)
!172 = !DILocation(line: 41, column: 23, scope: !100)
!173 = !DILocation(line: 42, column: 33, scope: !100)
!174 = !DILocation(line: 42, column: 9, scope: !100)
!175 = !DILocation(line: 34, column: 45, scope: !100)
!176 = !DILocation(line: 46, column: 1, scope: !100)
!177 = distinct !DISubprogram(name: "add_edge", linkageName: "add_edge", scope: null, file: !33, line: 32, type: !5, scopeLine: 32, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!178 = !DILocation(line: 34, column: 10, scope: !179)
!179 = !DILexicalBlockFile(scope: !177, file: !33, discriminator: 0)
!180 = !DILocation(line: 34, column: 7, scope: !179)
!181 = !DILocation(line: 34, column: 13, scope: !179)
!182 = !DILocation(line: 34, column: 15, scope: !179)
!183 = !DILocation(line: 34, column: 22, scope: !179)
!184 = !DILocation(line: 34, column: 3, scope: !179)
!185 = !DILocation(line: 35, column: 5, scope: !179)
!186 = !DILocation(line: 36, column: 5, scope: !179)
!187 = !DILocation(line: 38, column: 3, scope: !179)
!188 = !DILocation(line: 38, column: 11, scope: !179)
!189 = !DILocation(line: 38, column: 30, scope: !179)
!190 = !DILocation(line: 38, column: 36, scope: !179)
!191 = !DILocation(line: 38, column: 38, scope: !179)
!192 = !DILocation(line: 38, column: 42, scope: !179)
!193 = !DILocation(line: 38, column: 40, scope: !179)
!194 = !DILocation(line: 39, column: 1, scope: !179)
!195 = distinct !DISubprogram(name: "init_min_heap", linkageName: "init_min_heap", scope: null, file: !33, line: 130, type: !5, scopeLine: 130, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!196 = !DILocation(line: 132, column: 19, scope: !197)
!197 = !DILexicalBlockFile(scope: !195, file: !33, discriminator: 0)
!198 = !DILocation(line: 133, column: 9, scope: !197)
!199 = !DILocation(line: 133, column: 36, scope: !197)
!200 = !DILocation(line: 133, column: 34, scope: !197)
!201 = !DILocation(line: 133, column: 15, scope: !197)
!202 = !DILocation(line: 133, column: 13, scope: !197)
!203 = !DILocation(line: 134, column: 9, scope: !197)
!204 = !DILocation(line: 134, column: 14, scope: !197)
!205 = !DILocation(line: 135, column: 9, scope: !197)
!206 = !DILocation(line: 135, column: 18, scope: !197)
!207 = !DILocation(line: 136, column: 9, scope: !197)
!208 = !DILocation(line: 136, column: 46, scope: !197)
!209 = !DILocation(line: 136, column: 17, scope: !197)
!210 = !DILocation(line: 136, column: 15, scope: !197)
!211 = !DILocation(line: 138, column: 1, scope: !197)
!212 = distinct !DISubprogram(name: "new_heap_node", linkageName: "new_heap_node", scope: null, file: !33, line: 122, type: !5, scopeLine: 122, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!213 = !DILocation(line: 124, column: 20, scope: !214)
!214 = !DILexicalBlockFile(scope: !212, file: !33, discriminator: 0)
!215 = !DILocation(line: 125, column: 6, scope: !214)
!216 = !DILocation(line: 125, column: 8, scope: !214)
!217 = !DILocation(line: 126, column: 6, scope: !214)
!218 = !DILocation(line: 126, column: 11, scope: !214)
!219 = !DILocation(line: 128, column: 1, scope: !214)
!220 = distinct !DISubprogram(name: "heapify", linkageName: "heapify", scope: null, file: !33, line: 147, type: !5, scopeLine: 147, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!221 = !DILocation(line: 109, column: 27, scope: !222)
!222 = !DILexicalBlockFile(scope: !220, file: !33, discriminator: 0)
!223 = !DILocation(line: 109, column: 33, scope: !222)
!224 = !DILocation(line: 110, column: 34, scope: !222)
!225 = !DILocation(line: 154, column: 20, scope: !222)
!226 = !DILocation(line: 154, column: 14, scope: !222)
!227 = !DILocation(line: 154, column: 12, scope: !222)
!228 = !DILocation(line: 154, column: 25, scope: !222)
!229 = !DILocation(line: 154, column: 34, scope: !222)
!230 = !DILocation(line: 154, column: 28, scope: !222)
!231 = !DILocation(line: 154, column: 44, scope: !222)
!232 = !DILocation(line: 154, column: 47, scope: !222)
!233 = !DILocation(line: 154, column: 69, scope: !222)
!234 = !DILocation(line: 154, column: 54, scope: !222)
!235 = !DILocation(line: 154, column: 72, scope: !222)
!236 = !DILocation(line: 154, column: 52, scope: !222)
!237 = !DILocation(line: 154, column: 3, scope: !222)
!238 = !DILocation(line: 156, column: 15, scope: !222)
!239 = !DILocation(line: 156, column: 13, scope: !222)
!240 = !DILocation(line: 156, column: 26, scope: !222)
!241 = !DILocation(line: 156, column: 35, scope: !222)
!242 = !DILocation(line: 156, column: 29, scope: !222)
!243 = !DILocation(line: 156, column: 46, scope: !222)
!244 = !DILocation(line: 156, column: 49, scope: !222)
!245 = !DILocation(line: 156, column: 71, scope: !222)
!246 = !DILocation(line: 156, column: 56, scope: !222)
!247 = !DILocation(line: 156, column: 74, scope: !222)
!248 = !DILocation(line: 156, column: 54, scope: !222)
!249 = !DILocation(line: 156, column: 3, scope: !222)
!250 = !DILocation(line: 159, column: 11, scope: !222)
!251 = !DILocation(line: 161, column: 35, scope: !222)
!252 = !DILocation(line: 161, column: 29, scope: !222)
!253 = !DILocation(line: 161, column: 44, scope: !222)
!254 = !DILocation(line: 162, column: 44, scope: !222)
!255 = !DILocation(line: 162, column: 29, scope: !222)
!256 = !DILocation(line: 164, column: 11, scope: !222)
!257 = !DILocation(line: 164, column: 5, scope: !222)
!258 = !DILocation(line: 164, column: 25, scope: !222)
!259 = !DILocation(line: 164, column: 15, scope: !222)
!260 = !DILocation(line: 164, column: 26, scope: !222)
!261 = !DILocation(line: 164, column: 28, scope: !222)
!262 = !DILocation(line: 165, column: 5, scope: !222)
!263 = !DILocation(line: 165, column: 25, scope: !222)
!264 = !DILocation(line: 165, column: 15, scope: !222)
!265 = !DILocation(line: 165, column: 26, scope: !222)
!266 = !DILocation(line: 165, column: 28, scope: !222)
!267 = !DILocation(line: 167, column: 21, scope: !222)
!268 = !DILocation(line: 167, column: 40, scope: !222)
!269 = !DILocation(line: 167, column: 5, scope: !222)
!270 = !DILocation(line: 168, column: 5, scope: !222)
!271 = !DILocation(line: 170, column: 1, scope: !222)
!272 = distinct !DISubprogram(name: "decrease_key", linkageName: "decrease_key", scope: null, file: !33, line: 192, type: !5, scopeLine: 192, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!273 = !DILocation(line: 194, column: 17, scope: !274)
!274 = !DILexicalBlockFile(scope: !272, file: !33, discriminator: 0)
!275 = !DILocation(line: 194, column: 11, scope: !274)
!276 = !DILocation(line: 194, column: 22, scope: !274)
!277 = !DILocation(line: 195, column: 9, scope: !274)
!278 = !DILocation(line: 195, column: 3, scope: !274)
!279 = !DILocation(line: 195, column: 16, scope: !274)
!280 = !DILocation(line: 195, column: 19, scope: !274)
!281 = !DILocation(line: 195, column: 24, scope: !274)
!282 = !DILocation(line: 197, column: 12, scope: !274)
!283 = !DILocation(line: 197, column: 15, scope: !274)
!284 = !DILocation(line: 197, column: 28, scope: !274)
!285 = !DILocation(line: 197, column: 31, scope: !274)
!286 = !DILocation(line: 108, column: 26, scope: !274)
!287 = !DILocation(line: 108, column: 30, scope: !274)
!288 = !DILocation(line: 197, column: 63, scope: !274)
!289 = !DILocation(line: 197, column: 38, scope: !274)
!290 = !DILocation(line: 197, column: 66, scope: !274)
!291 = !DILocation(line: 197, column: 36, scope: !274)
!292 = !DILocation(line: 197, column: 9, scope: !274)
!293 = !DILocation(line: 199, column: 5, scope: !274)
!294 = !DILocation(line: 199, column: 15, scope: !274)
!295 = !DILocation(line: 199, column: 31, scope: !274)
!296 = !DILocation(line: 199, column: 32, scope: !274)
!297 = !DILocation(line: 199, column: 34, scope: !274)
!298 = !DILocation(line: 200, column: 5, scope: !274)
!299 = !DILocation(line: 200, column: 15, scope: !274)
!300 = !DILocation(line: 200, column: 43, scope: !274)
!301 = !DILocation(line: 200, column: 44, scope: !274)
!302 = !DILocation(line: 200, column: 46, scope: !274)
!303 = !DILocation(line: 201, column: 21, scope: !274)
!304 = !DILocation(line: 201, column: 38, scope: !274)
!305 = !DILocation(line: 201, column: 5, scope: !274)
!306 = !DILocation(line: 204, column: 1, scope: !274)
!307 = distinct !DISubprogram(name: "extract_min", linkageName: "extract_min", scope: null, file: !33, line: 172, type: !5, scopeLine: 172, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!308 = !DILocation(line: 111, column: 38, scope: !309)
!309 = !DILexicalBlockFile(scope: !307, file: !33, discriminator: 0)
!310 = !DILocation(line: 111, column: 30, scope: !309)
!311 = !DILocation(line: 111, column: 43, scope: !309)
!312 = !DILocation(line: 174, column: 3, scope: !309)
!313 = !DILocation(line: 175, column: 29, scope: !309)
!314 = !DILocation(line: 175, column: 23, scope: !309)
!315 = !DILocation(line: 178, column: 33, scope: !309)
!316 = !DILocation(line: 106, column: 49, scope: !309)
!317 = !DILocation(line: 106, column: 52, scope: !309)
!318 = !DILocation(line: 106, column: 25, scope: !309)
!319 = !DILocation(line: 179, column: 18, scope: !309)
!320 = !DILocation(line: 182, column: 9, scope: !309)
!321 = !DILocation(line: 182, column: 3, scope: !309)
!322 = !DILocation(line: 182, column: 19, scope: !309)
!323 = !DILocation(line: 182, column: 13, scope: !309)
!324 = !DILocation(line: 182, column: 20, scope: !309)
!325 = !DILocation(line: 182, column: 24, scope: !309)
!326 = !DILocation(line: 182, column: 35, scope: !309)
!327 = !DILocation(line: 182, column: 22, scope: !309)
!328 = !DILocation(line: 183, column: 3, scope: !309)
!329 = !DILocation(line: 183, column: 19, scope: !309)
!330 = !DILocation(line: 183, column: 13, scope: !309)
!331 = !DILocation(line: 183, column: 20, scope: !309)
!332 = !DILocation(line: 183, column: 22, scope: !309)
!333 = !DILocation(line: 186, column: 14, scope: !309)
!334 = !DILocation(line: 187, column: 3, scope: !309)
!335 = !DILocation(line: 189, column: 1, scope: !309)
!336 = distinct !DISubprogram(name: "swap_heap_node", linkageName: "swap_heap_node", scope: null, file: !33, line: 140, type: !5, scopeLine: 140, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!337 = !DILocation(line: 142, column: 20, scope: !338)
!338 = !DILexicalBlockFile(scope: !336, file: !33, discriminator: 0)
!339 = !DILocation(line: 143, column: 8, scope: !338)
!340 = !DILocation(line: 143, column: 6, scope: !338)
!341 = !DILocation(line: 144, column: 6, scope: !338)
!342 = !DILocation(line: 145, column: 1, scope: !338)

