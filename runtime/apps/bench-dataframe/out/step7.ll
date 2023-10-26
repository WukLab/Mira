; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"struct.std::chrono::duration.0" = type { i64 }
%"struct.std::chrono::duration" = type { i64 }
%"struct.std::chrono::time_point" = type { %"struct.std::chrono::duration" }

@str4 = internal constant [2 x i8] c"\0A\00"
@str3 = internal constant [52 x i8] c"analyze_trip_durations_of_timestamps() on key = %s\0A\00"
@str2 = internal constant [16 x i8] c"Step 7: %ld us\0A\00"
@str1 = internal constant [13 x i8] c"pickup_month\00"
@str0 = internal constant [11 x i8] c"pickup_day\00"

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) #0

declare void @free(i8*) #1

declare i32 @printf(i8*, ...) #1

define i32 @main() #1 !dbg !3 {
  %1 = alloca %"struct.std::chrono::duration.0", i64 1, align 8
  %2 = alloca %"struct.std::chrono::duration", i64 1, align 8
  %3 = alloca %"struct.std::chrono::time_point", i64 1, align 8
  %4 = alloca %"struct.std::chrono::time_point", i64 1, align 8
  %5 = alloca %"struct.std::chrono::time_point", i64 1, align 8
  %6 = alloca [10 x %"struct.std::chrono::time_point"], i64 1, align 8, !dbg !7
  %7 = getelementptr [10 x %"struct.std::chrono::time_point"], [10 x %"struct.std::chrono::time_point"]* %6, i32 0, i32 0, !dbg !9
  br label %8, !dbg !9

8:                                                ; preds = %11, %0
  %9 = phi i64 [ 0, %0 ], [ %13, %11 ]
  %10 = icmp slt i64 %9, 10, !dbg !9
  br i1 %10, label %11, label %14, !dbg !9

11:                                               ; preds = %8
  %12 = getelementptr %"struct.std::chrono::time_point", %"struct.std::chrono::time_point"* %7, i64 %9, !dbg !9
  call void @_ZNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEC1Ev(%"struct.std::chrono::time_point"* %12), !dbg !9
  %13 = add i64 %9, 1, !dbg !9
  br label %8, !dbg !9

14:                                               ; preds = %8
  %15 = call i8* @_Z9load_datav(), !dbg !10
  call void @_Z19load_trip_timestampv(), !dbg !11
  %16 = call %"struct.std::chrono::time_point" @_ZNSt6chrono3_V212steady_clock3nowEv(), !dbg !12
  store %"struct.std::chrono::time_point" %16, %"struct.std::chrono::time_point"* %5, align 8, !dbg !12
  %17 = call %"struct.std::chrono::time_point"* @_ZNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEaSEOS7_(%"struct.std::chrono::time_point"* %7, %"struct.std::chrono::time_point"* %5), !dbg !13
  call void @_Z36analyze_trip_durations_of_timestampsIcEvPKc(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @str0, i32 0, i32 0)), !dbg !14
  %18 = getelementptr %"struct.std::chrono::time_point", %"struct.std::chrono::time_point"* %7, i32 1, !dbg !15
  %19 = call %"struct.std::chrono::time_point" @_ZNSt6chrono3_V212steady_clock3nowEv(), !dbg !16
  store %"struct.std::chrono::time_point" %19, %"struct.std::chrono::time_point"* %4, align 8, !dbg !16
  %20 = call %"struct.std::chrono::time_point"* @_ZNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEaSEOS7_(%"struct.std::chrono::time_point"* %18, %"struct.std::chrono::time_point"* %4), !dbg !17
  call void @_Z36analyze_trip_durations_of_timestampsIcEvPKc(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @str1, i32 0, i32 0)), !dbg !18
  %21 = getelementptr %"struct.std::chrono::time_point", %"struct.std::chrono::time_point"* %7, i32 2, !dbg !19
  %22 = call %"struct.std::chrono::time_point" @_ZNSt6chrono3_V212steady_clock3nowEv(), !dbg !20
  store %"struct.std::chrono::time_point" %22, %"struct.std::chrono::time_point"* %3, align 8, !dbg !20
  %23 = call %"struct.std::chrono::time_point"* @_ZNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEaSEOS7_(%"struct.std::chrono::time_point"* %21, %"struct.std::chrono::time_point"* %3), !dbg !21
  %24 = call %"struct.std::chrono::duration" @_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE(%"struct.std::chrono::time_point"* %18, %"struct.std::chrono::time_point"* %7), !dbg !22
  store %"struct.std::chrono::duration" %24, %"struct.std::chrono::duration"* %2, align 8, !dbg !23
  %25 = call %"struct.std::chrono::duration.0" @_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE(%"struct.std::chrono::duration"* %2), !dbg !24
  store %"struct.std::chrono::duration.0" %25, %"struct.std::chrono::duration.0"* %1, align 8, !dbg !24
  %26 = call i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000EEE5countEv(%"struct.std::chrono::duration.0"* %1), !dbg !25
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @str2, i32 0, i32 0), i64 %26), !dbg !26
  ret i32 undef, !dbg !27
}

define linkonce_odr void @_ZNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEC1Ev(%"struct.std::chrono::time_point"* %0) #1 !dbg !28 {
  %2 = alloca %"struct.std::chrono::duration", i64 1, align 8
  %3 = alloca %"struct.std::chrono::duration", i64 1, align 8
  %4 = call %"struct.std::chrono::duration" @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE4zeroEv(), !dbg !30
  store %"struct.std::chrono::duration" %4, %"struct.std::chrono::duration"* %2, align 8, !dbg !30
  call void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1ERKS3_(%"struct.std::chrono::duration"* %3, %"struct.std::chrono::duration"* %2), !dbg !32
  %5 = getelementptr %"struct.std::chrono::time_point", %"struct.std::chrono::time_point"* %0, i32 0, i32 0, !dbg !33
  %6 = load %"struct.std::chrono::duration", %"struct.std::chrono::duration"* %3, align 8, !dbg !33
  store %"struct.std::chrono::duration" %6, %"struct.std::chrono::duration"* %5, align 8, !dbg !33
  ret void, !dbg !34
}

declare i8* @_Z9load_datav() #1

declare void @_Z19load_trip_timestampv() #1

define linkonce_odr %"struct.std::chrono::time_point"* @_ZNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEaSEOS7_(%"struct.std::chrono::time_point"* %0, %"struct.std::chrono::time_point"* %1) #1 !dbg !35 {
  %3 = getelementptr %"struct.std::chrono::time_point", %"struct.std::chrono::time_point"* %0, i32 0, i32 0, !dbg !36
  %4 = getelementptr %"struct.std::chrono::time_point", %"struct.std::chrono::time_point"* %1, i32 0, i32 0, !dbg !36
  %5 = call %"struct.std::chrono::duration"* @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEaSERKS3_(%"struct.std::chrono::duration"* %3, %"struct.std::chrono::duration"* %4), !dbg !36
  ret %"struct.std::chrono::time_point"* %0, !dbg !36
}

declare %"struct.std::chrono::time_point" @_ZNSt6chrono3_V212steady_clock3nowEv() #1

define linkonce_odr void @_Z36analyze_trip_durations_of_timestampsIcEvPKc(i8* %0) #1 !dbg !38 {
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @str3, i32 0, i32 0), i8* %0), !dbg !39
  call void @_Z16step7_do_processPKc(i8* %0), !dbg !41
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str4, i32 0, i32 0)), !dbg !42
  ret void, !dbg !43
}

define linkonce_odr i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000EEE5countEv(%"struct.std::chrono::duration.0"* %0) #1 !dbg !44 {
  %2 = getelementptr %"struct.std::chrono::duration.0", %"struct.std::chrono::duration.0"* %0, i32 0, i32 0, !dbg !45
  %3 = load i64, i64* %2, align 8, !dbg !45
  ret i64 %3, !dbg !47
}

define linkonce_odr %"struct.std::chrono::duration.0" @_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE(%"struct.std::chrono::duration"* %0) #1 !dbg !48 {
  %2 = alloca %"struct.std::chrono::duration.0", i64 1, align 8
  %3 = alloca %"struct.std::chrono::duration.0", i64 1, align 8
  %4 = call %"struct.std::chrono::duration.0" @_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000000EEEES2_ILl1ELl1000EElLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE(%"struct.std::chrono::duration"* %0), !dbg !49
  store %"struct.std::chrono::duration.0" %4, %"struct.std::chrono::duration.0"* %2, align 8, !dbg !49
  call void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEC1ERKS3_(%"struct.std::chrono::duration.0"* %3, %"struct.std::chrono::duration.0"* %2), !dbg !49
  %5 = load %"struct.std::chrono::duration.0", %"struct.std::chrono::duration.0"* %3, align 8, !dbg !51
  ret %"struct.std::chrono::duration.0" %5, !dbg !52
}

define linkonce_odr %"struct.std::chrono::duration" @_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE(%"struct.std::chrono::time_point"* %0, %"struct.std::chrono::time_point"* %1) #1 !dbg !53 {
  %3 = alloca %"struct.std::chrono::duration", i64 1, align 8
  %4 = alloca %"struct.std::chrono::duration", i64 1, align 8
  %5 = alloca %"struct.std::chrono::duration", i64 1, align 8
  %6 = alloca %"struct.std::chrono::duration", i64 1, align 8
  %7 = call %"struct.std::chrono::duration" @_ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv(%"struct.std::chrono::time_point"* %0), !dbg !54
  store %"struct.std::chrono::duration" %7, %"struct.std::chrono::duration"* %5, align 8, !dbg !56
  %8 = call %"struct.std::chrono::duration" @_ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv(%"struct.std::chrono::time_point"* %1), !dbg !57
  store %"struct.std::chrono::duration" %8, %"struct.std::chrono::duration"* %4, align 8, !dbg !58
  %9 = call %"struct.std::chrono::duration" @_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_(%"struct.std::chrono::duration"* %5, %"struct.std::chrono::duration"* %4), !dbg !59
  store %"struct.std::chrono::duration" %9, %"struct.std::chrono::duration"* %3, align 8, !dbg !56
  call void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1ERKS3_(%"struct.std::chrono::duration"* %6, %"struct.std::chrono::duration"* %3), !dbg !56
  %10 = load %"struct.std::chrono::duration", %"struct.std::chrono::duration"* %6, align 8, !dbg !60
  ret %"struct.std::chrono::duration" %10, !dbg !61
}

define linkonce_odr void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1ERKS3_(%"struct.std::chrono::duration"* %0, %"struct.std::chrono::duration"* %1) #1 !dbg !62 {
  %3 = getelementptr %"struct.std::chrono::duration", %"struct.std::chrono::duration"* %1, i32 0, i32 0, !dbg !63
  %4 = load i64, i64* %3, align 8, !dbg !63
  %5 = getelementptr %"struct.std::chrono::duration", %"struct.std::chrono::duration"* %0, i32 0, i32 0, !dbg !63
  store i64 %4, i64* %5, align 8, !dbg !63
  ret void, !dbg !65
}

define linkonce_odr %"struct.std::chrono::duration" @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE4zeroEv() #1 !dbg !66 {
  %1 = alloca %"struct.std::chrono::duration", i64 1, align 8
  %2 = alloca i64, i64 1, align 8
  store i64 undef, i64* %2, align 8
  %3 = alloca %"struct.std::chrono::duration", i64 1, align 8
  %4 = alloca %"struct.std::chrono::duration", i64 1, align 8
  store i64 0, i64* %2, align 8, !dbg !67
  call void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_(%"struct.std::chrono::duration"* %3, i64* %2), !dbg !69
  %5 = load %"struct.std::chrono::duration", %"struct.std::chrono::duration"* %3, align 8, !dbg !69
  store %"struct.std::chrono::duration" %5, %"struct.std::chrono::duration"* %1, align 8, !dbg !69
  call void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1ERKS3_(%"struct.std::chrono::duration"* %4, %"struct.std::chrono::duration"* %1), !dbg !69
  %6 = load %"struct.std::chrono::duration", %"struct.std::chrono::duration"* %4, align 8, !dbg !70
  ret %"struct.std::chrono::duration" %6, !dbg !71
}

define linkonce_odr %"struct.std::chrono::duration"* @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEaSERKS3_(%"struct.std::chrono::duration"* %0, %"struct.std::chrono::duration"* %1) #1 !dbg !72 {
  %3 = getelementptr %"struct.std::chrono::duration", %"struct.std::chrono::duration"* %0, i32 0, i32 0, !dbg !73
  %4 = getelementptr %"struct.std::chrono::duration", %"struct.std::chrono::duration"* %1, i32 0, i32 0, !dbg !73
  %5 = load i64, i64* %4, align 8, !dbg !73
  store i64 %5, i64* %3, align 8, !dbg !73
  ret %"struct.std::chrono::duration"* %0, !dbg !73
}

declare void @_Z16step7_do_processPKc(i8*) #1

define linkonce_odr void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEC1ERKS3_(%"struct.std::chrono::duration.0"* %0, %"struct.std::chrono::duration.0"* %1) #1 !dbg !75 {
  %3 = getelementptr %"struct.std::chrono::duration.0", %"struct.std::chrono::duration.0"* %1, i32 0, i32 0, !dbg !76
  %4 = load i64, i64* %3, align 8, !dbg !76
  %5 = getelementptr %"struct.std::chrono::duration.0", %"struct.std::chrono::duration.0"* %0, i32 0, i32 0, !dbg !76
  store i64 %4, i64* %5, align 8, !dbg !76
  ret void, !dbg !78
}

define linkonce_odr %"struct.std::chrono::duration.0" @_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000000EEEES2_ILl1ELl1000EElLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE(%"struct.std::chrono::duration"* %0) #1 !dbg !79 {
  %2 = alloca %"struct.std::chrono::duration.0", i64 1, align 8
  %3 = alloca i64, i64 1, align 8
  store i64 undef, i64* %3, align 8
  %4 = alloca %"struct.std::chrono::duration.0", i64 1, align 8
  %5 = alloca %"struct.std::chrono::duration.0", i64 1, align 8
  %6 = call i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv(%"struct.std::chrono::duration"* %0), !dbg !80
  %7 = sdiv i64 %6, 1000, !dbg !82
  store i64 %7, i64* %3, align 8, !dbg !83
  call void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEC1IlvEERKT_(%"struct.std::chrono::duration.0"* %4, i64* %3), !dbg !84
  %8 = load %"struct.std::chrono::duration.0", %"struct.std::chrono::duration.0"* %4, align 8, !dbg !84
  store %"struct.std::chrono::duration.0" %8, %"struct.std::chrono::duration.0"* %2, align 8, !dbg !84
  call void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEC1ERKS3_(%"struct.std::chrono::duration.0"* %5, %"struct.std::chrono::duration.0"* %2), !dbg !84
  %9 = load %"struct.std::chrono::duration.0", %"struct.std::chrono::duration.0"* %5, align 8, !dbg !85
  ret %"struct.std::chrono::duration.0" %9, !dbg !86
}

define linkonce_odr %"struct.std::chrono::duration" @_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_(%"struct.std::chrono::duration"* %0, %"struct.std::chrono::duration"* %1) #1 !dbg !87 {
  %3 = alloca %"struct.std::chrono::duration", i64 1, align 8
  %4 = alloca i64, i64 1, align 8
  store i64 undef, i64* %4, align 8
  %5 = alloca %"struct.std::chrono::duration", i64 1, align 8
  %6 = alloca %"struct.std::chrono::duration", i64 1, align 8
  %7 = alloca %"struct.std::chrono::duration", i64 1, align 8
  %8 = alloca %"struct.std::chrono::duration", i64 1, align 8
  %9 = alloca %"struct.std::chrono::duration", i64 1, align 8
  %10 = alloca %"struct.std::chrono::duration", i64 1, align 8
  call void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1ERKS3_(%"struct.std::chrono::duration"* %8, %"struct.std::chrono::duration"* %0), !dbg !88
  %11 = load %"struct.std::chrono::duration", %"struct.std::chrono::duration"* %8, align 8, !dbg !88
  store %"struct.std::chrono::duration" %11, %"struct.std::chrono::duration"* %7, align 8, !dbg !88
  %12 = call i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv(%"struct.std::chrono::duration"* %7), !dbg !90
  call void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1ERKS3_(%"struct.std::chrono::duration"* %6, %"struct.std::chrono::duration"* %1), !dbg !91
  %13 = load %"struct.std::chrono::duration", %"struct.std::chrono::duration"* %6, align 8, !dbg !91
  store %"struct.std::chrono::duration" %13, %"struct.std::chrono::duration"* %5, align 8, !dbg !91
  %14 = call i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv(%"struct.std::chrono::duration"* %5), !dbg !92
  %15 = sub i64 %12, %14, !dbg !93
  store i64 %15, i64* %4, align 8, !dbg !88
  call void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_(%"struct.std::chrono::duration"* %9, i64* %4), !dbg !94
  %16 = load %"struct.std::chrono::duration", %"struct.std::chrono::duration"* %9, align 8, !dbg !94
  store %"struct.std::chrono::duration" %16, %"struct.std::chrono::duration"* %3, align 8, !dbg !94
  call void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1ERKS3_(%"struct.std::chrono::duration"* %10, %"struct.std::chrono::duration"* %3), !dbg !94
  %17 = load %"struct.std::chrono::duration", %"struct.std::chrono::duration"* %10, align 8, !dbg !95
  ret %"struct.std::chrono::duration" %17, !dbg !96
}

define linkonce_odr %"struct.std::chrono::duration" @_ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv(%"struct.std::chrono::time_point"* %0) #1 !dbg !97 {
  %2 = alloca %"struct.std::chrono::duration", i64 1, align 8
  %3 = getelementptr %"struct.std::chrono::time_point", %"struct.std::chrono::time_point"* %0, i32 0, i32 0, !dbg !98
  call void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1ERKS3_(%"struct.std::chrono::duration"* %2, %"struct.std::chrono::duration"* %3), !dbg !98
  %4 = load %"struct.std::chrono::duration", %"struct.std::chrono::duration"* %2, align 8, !dbg !100
  ret %"struct.std::chrono::duration" %4, !dbg !101
}

define linkonce_odr void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_(%"struct.std::chrono::duration"* %0, i64* %1) #1 !dbg !102 {
  %3 = load i64, i64* %1, align 8, !dbg !103
  %4 = getelementptr %"struct.std::chrono::duration", %"struct.std::chrono::duration"* %0, i32 0, i32 0, !dbg !105
  store i64 %3, i64* %4, align 8, !dbg !105
  ret void, !dbg !106
}

define linkonce_odr i64 @_ZNSt6chrono15duration_valuesIlE4zeroEv() #1 !dbg !107 {
  ret i64 0, !dbg !108
}

define linkonce_odr void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEC1IlvEERKT_(%"struct.std::chrono::duration.0"* %0, i64* %1) #1 !dbg !110 {
  %3 = load i64, i64* %1, align 8, !dbg !111
  %4 = getelementptr %"struct.std::chrono::duration.0", %"struct.std::chrono::duration.0"* %0, i32 0, i32 0, !dbg !113
  store i64 %3, i64* %4, align 8, !dbg !113
  ret void, !dbg !114
}

define linkonce_odr i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv(%"struct.std::chrono::duration"* %0) #1 !dbg !115 {
  %2 = getelementptr %"struct.std::chrono::duration", %"struct.std::chrono::duration"* %0, i32 0, i32 0, !dbg !116
  %3 = load i64, i64* %2, align 8, !dbg !116
  ret i64 %3, !dbg !118
}

attributes #0 = { inaccessiblememonly mustprogress nofree nounwind willreturn "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "main", linkageName: "main", scope: null, file: !4, line: 24, type: !5, scopeLine: 24, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!4 = !DIFile(filename: "app/main_step7.cc", directory: "/home/wuklab/AIFM/aifm/DataFrame/original")
!5 = !DISubroutineType(types: !6)
!6 = !{}
!7 = !DILocation(line: 26, column: 5, scope: !8)
!8 = !DILexicalBlockFile(scope: !3, file: !4, discriminator: 0)
!9 = !DILocation(line: 26, column: 56, scope: !8)
!10 = !DILocation(line: 27, column: 18, scope: !8)
!11 = !DILocation(line: 28, column: 5, scope: !8)
!12 = !DILocation(line: 30, column: 16, scope: !8)
!13 = !DILocation(line: 30, column: 14, scope: !8)
!14 = !DILocation(line: 31, column: 5, scope: !8)
!15 = !DILocation(line: 32, column: 5, scope: !8)
!16 = !DILocation(line: 32, column: 16, scope: !8)
!17 = !DILocation(line: 32, column: 14, scope: !8)
!18 = !DILocation(line: 33, column: 5, scope: !8)
!19 = !DILocation(line: 34, column: 5, scope: !8)
!20 = !DILocation(line: 34, column: 16, scope: !8)
!21 = !DILocation(line: 34, column: 14, scope: !8)
!22 = !DILocation(line: 36, column: 72, scope: !8)
!23 = !DILocation(line: 36, column: 63, scope: !8)
!24 = !DILocation(line: 36, column: 9, scope: !8)
!25 = !DILocation(line: 37, column: 10, scope: !8)
!26 = !DILocation(line: 35, column: 5, scope: !8)
!27 = !DILocation(line: 38, column: 1, scope: !8)
!28 = distinct !DISubprogram(name: "_ZNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEC1Ev", linkageName: "_ZNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEC1Ev", scope: null, file: !29, line: 633, type: !5, scopeLine: 633, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!29 = !DIFile(filename: "/../lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/chrono", directory: "")
!30 = !DILocation(line: 633, column: 31, scope: !31)
!31 = !DILexicalBlockFile(scope: !28, file: !29, discriminator: 0)
!32 = !DILocation(line: 633, column: 27, scope: !31)
!33 = !DILocation(line: 633, column: 2, scope: !31)
!34 = !DILocation(line: 634, column: 4, scope: !31)
!35 = distinct !DISubprogram(name: "_ZNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEaSEOS7_", linkageName: "_ZNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEaSEOS7_", scope: null, file: !29, line: 626, type: !5, scopeLine: 626, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!36 = !DILocation(line: 626, column: 14, scope: !37)
!37 = !DILexicalBlockFile(scope: !35, file: !29, discriminator: 0)
!38 = distinct !DISubprogram(name: "_Z36analyze_trip_durations_of_timestampsIcEvPKc", linkageName: "_Z36analyze_trip_durations_of_timestampsIcEvPKc", scope: null, file: !4, line: 9, type: !5, scopeLine: 9, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!39 = !DILocation(line: 11, column: 5, scope: !40)
!40 = !DILexicalBlockFile(scope: !38, file: !4, discriminator: 0)
!41 = !DILocation(line: 18, column: 5, scope: !40)
!42 = !DILocation(line: 21, column: 5, scope: !40)
!43 = !DILocation(line: 22, column: 1, scope: !40)
!44 = distinct !DISubprogram(name: "_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000EEE5countEv", linkageName: "_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000EEE5countEv", scope: null, file: !29, line: 346, type: !5, scopeLine: 346, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!45 = !DILocation(line: 347, column: 11, scope: !46)
!46 = !DILexicalBlockFile(scope: !44, file: !29, discriminator: 0)
!47 = !DILocation(line: 347, column: 16, scope: !46)
!48 = distinct !DISubprogram(name: "_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE", linkageName: "_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE", scope: null, file: !29, line: 191, type: !5, scopeLine: 191, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!49 = !DILocation(line: 200, column: 9, scope: !50)
!50 = !DILexicalBlockFile(scope: !48, file: !29, discriminator: 0)
!51 = !DILocation(line: 200, column: 2, scope: !50)
!52 = !DILocation(line: 201, column: 7, scope: !50)
!53 = distinct !DISubprogram(name: "_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE", linkageName: "_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE", scope: null, file: !29, line: 762, type: !5, scopeLine: 762, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!54 = !DILocation(line: 764, column: 22, scope: !55)
!55 = !DILexicalBlockFile(scope: !53, file: !29, discriminator: 0)
!56 = !DILocation(line: 764, column: 16, scope: !55)
!57 = !DILocation(line: 764, column: 49, scope: !55)
!58 = !DILocation(line: 764, column: 43, scope: !55)
!59 = !DILocation(line: 764, column: 41, scope: !55)
!60 = !DILocation(line: 764, column: 9, scope: !55)
!61 = !DILocation(line: 764, column: 69, scope: !55)
!62 = distinct !DISubprogram(name: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1ERKS3_", linkageName: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1ERKS3_", scope: null, file: !29, line: 324, type: !5, scopeLine: 324, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!63 = !DILocation(line: 324, column: 2, scope: !64)
!64 = !DILexicalBlockFile(scope: !62, file: !29, discriminator: 0)
!65 = !DILocation(line: 324, column: 36, scope: !64)
!66 = distinct !DISubprogram(name: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE4zeroEv", linkageName: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE4zeroEv", scope: null, file: !29, line: 431, type: !5, scopeLine: 431, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!67 = !DILocation(line: 432, column: 20, scope: !68)
!68 = !DILexicalBlockFile(scope: !66, file: !29, discriminator: 0)
!69 = !DILocation(line: 432, column: 11, scope: !68)
!70 = !DILocation(line: 432, column: 4, scope: !68)
!71 = !DILocation(line: 432, column: 51, scope: !68)
!72 = distinct !DISubprogram(name: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEaSERKS3_", linkageName: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEaSERKS3_", scope: null, file: !29, line: 342, type: !5, scopeLine: 342, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!73 = !DILocation(line: 342, column: 47, scope: !74)
!74 = !DILexicalBlockFile(scope: !72, file: !29, discriminator: 0)
!75 = distinct !DISubprogram(name: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEC1ERKS3_", linkageName: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEC1ERKS3_", scope: null, file: !29, line: 324, type: !5, scopeLine: 324, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!76 = !DILocation(line: 324, column: 2, scope: !77)
!77 = !DILexicalBlockFile(scope: !75, file: !29, discriminator: 0)
!78 = !DILocation(line: 324, column: 36, scope: !77)
!79 = distinct !DISubprogram(name: "_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000000EEEES2_ILl1ELl1000EElLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE", linkageName: "_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000000EEEES2_ILl1ELl1000EElLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE", scope: null, file: !29, line: 149, type: !5, scopeLine: 149, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!80 = !DILocation(line: 153, column: 29, scope: !81)
!81 = !DILexicalBlockFile(scope: !79, file: !29, discriminator: 0)
!82 = !DILocation(line: 153, column: 38, scope: !81)
!83 = !DILocation(line: 152, column: 20, scope: !81)
!84 = !DILocation(line: 152, column: 13, scope: !81)
!85 = !DILocation(line: 152, column: 6, scope: !81)
!86 = !DILocation(line: 154, column: 4, scope: !81)
!87 = distinct !DISubprogram(name: "_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_", linkageName: "_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_", scope: null, file: !29, line: 463, type: !5, scopeLine: 463, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!88 = !DILocation(line: 469, column: 14, scope: !89)
!89 = !DILexicalBlockFile(scope: !87, file: !29, discriminator: 0)
!90 = !DILocation(line: 469, column: 26, scope: !89)
!91 = !DILocation(line: 469, column: 36, scope: !89)
!92 = !DILocation(line: 469, column: 48, scope: !89)
!93 = !DILocation(line: 469, column: 34, scope: !89)
!94 = !DILocation(line: 469, column: 9, scope: !89)
!95 = !DILocation(line: 469, column: 2, scope: !89)
!96 = !DILocation(line: 470, column: 7, scope: !89)
!97 = distinct !DISubprogram(name: "_ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv", linkageName: "_ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv", scope: null, file: !29, line: 649, type: !5, scopeLine: 649, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!98 = !DILocation(line: 650, column: 11, scope: !99)
!99 = !DILexicalBlockFile(scope: !97, file: !29, discriminator: 0)
!100 = !DILocation(line: 650, column: 4, scope: !99)
!101 = !DILocation(line: 650, column: 16, scope: !99)
!102 = distinct !DISubprogram(name: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_", linkageName: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_", scope: null, file: !29, line: 331, type: !5, scopeLine: 331, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!103 = !DILocation(line: 332, column: 27, scope: !104)
!104 = !DILexicalBlockFile(scope: !102, file: !29, discriminator: 0)
!105 = !DILocation(line: 331, column: 4, scope: !104)
!106 = !DILocation(line: 332, column: 37, scope: !104)
!107 = distinct !DISubprogram(name: "_ZNSt6chrono15duration_valuesIlE4zeroEv", linkageName: "_ZNSt6chrono15duration_valuesIlE4zeroEv", scope: null, file: !29, line: 276, type: !5, scopeLine: 276, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!108 = !DILocation(line: 277, column: 20, scope: !109)
!109 = !DILexicalBlockFile(scope: !107, file: !29, discriminator: 0)
!110 = distinct !DISubprogram(name: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEC1IlvEERKT_", linkageName: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEC1IlvEERKT_", scope: null, file: !29, line: 331, type: !5, scopeLine: 331, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!111 = !DILocation(line: 332, column: 27, scope: !112)
!112 = !DILexicalBlockFile(scope: !110, file: !29, discriminator: 0)
!113 = !DILocation(line: 331, column: 4, scope: !112)
!114 = !DILocation(line: 332, column: 37, scope: !112)
!115 = distinct !DISubprogram(name: "_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv", linkageName: "_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv", scope: null, file: !29, line: 346, type: !5, scopeLine: 346, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!116 = !DILocation(line: 347, column: 11, scope: !117)
!117 = !DILexicalBlockFile(scope: !115, file: !29, discriminator: 0)
!118 = !DILocation(line: 347, column: 16, scope: !117)

