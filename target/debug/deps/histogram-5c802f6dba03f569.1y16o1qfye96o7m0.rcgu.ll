; ModuleID = '1y16o1qfye96o7m0-dfee7890c5bbf54aa3e71feee5193457.rs'
source_filename = "1y16o1qfye96o7m0-dfee7890c5bbf54aa3e71feee5193457.rs"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"unwind::libunwind::_Unwind_Exception" = type { [0 x i64], i64, [0 x i64], void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [0 x i64], [6 x i64], [0 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@__rustc_debug_gdb_scripts_section__ = linkonce_odr unnamed_addr constant [34 x i8] c"\01gdb_load_rust_pretty_printers.py\00", section ".debug_gdb_scripts", align 1

; core::ops::function::FnOnce::call_once
; Function Attrs: uwtable
define hidden i32 @_ZN4core3ops8function6FnOnce9call_once17hb696bb321ac7e42dE(i8* nonnull) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality !dbg !5 {
start:
  %personalityslot = alloca { i8*, i32 }, align 8
  %arg1 = alloca {}, align 1
  %arg0 = alloca i8*, align 8
  store i8* %0, i8** %arg0, align 8
  call void @llvm.dbg.declare(metadata i8** %arg0, metadata !25, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.declare(metadata {}* %arg1, metadata !28, metadata !DIExpression()), !dbg !27
; invoke std::rt::lang_start::{{closure}}
  %1 = invoke i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h9448bb008a1e90f9E"(i8** noalias dereferenceable(8) %arg0)
          to label %bb1 unwind label %cleanup, !dbg !29

bb1:                                              ; preds = %start
  br label %bb2, !dbg !29

bb2:                                              ; preds = %bb1
  ret i32 %1, !dbg !29

bb3:                                              ; preds = %cleanup
  br label %bb4, !dbg !29

bb4:                                              ; preds = %bb3
  %2 = bitcast { i8*, i32 }* %personalityslot to i8**, !dbg !29
  %3 = load i8*, i8** %2, align 8, !dbg !29
  %4 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1, !dbg !29
  %5 = load i32, i32* %4, align 4, !dbg !29
  %6 = insertvalue { i8*, i32 } undef, i8* %3, 0, !dbg !29
  %7 = insertvalue { i8*, i32 } %6, i32 %5, 1, !dbg !29
  resume { i8*, i32 } %7, !dbg !29

cleanup:                                          ; preds = %start
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  %10 = extractvalue { i8*, i32 } %8, 1
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 0
  store i8* %9, i8** %11, align 8
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %personalityslot, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  br label %bb3
}

; core::ptr::drop_in_place
; Function Attrs: uwtable
define hidden void @_ZN4core3ptr13drop_in_place17ha5d9312d8a366706E(i8**) unnamed_addr #0 !dbg !30 {
start:
  %arg0 = alloca i8**, align 8
  store i8** %0, i8*** %arg0, align 8
  call void @llvm.dbg.declare(metadata i8*** %arg0, metadata !38, metadata !DIExpression()), !dbg !39
  ret void, !dbg !40
}

declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; std::rt::lang_start::{{closure}}
declare hidden i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h9448bb008a1e90f9E"(i8** noalias readonly dereferenceable(8)) unnamed_addr #1

attributes #0 = { uwtable "probe-stack"="__rust_probestack" }
attributes #1 = { "probe-stack"="__rust_probestack" }
attributes #2 = { nounwind readnone speculatable }

!llvm.module.flags = !{!0, !1}
!llvm.dbg.cu = !{!2}

!0 = !{i32 7, !"PIE Level", i32 2}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !3, producer: "clang LLVM (rustc version 1.28.0-nightly (e3bf634e0 2018-06-28))", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!3 = !DIFile(filename: "src/main.rs", directory: "/media/dbusaba/SharedData/University/Research/Rust/histogram")
!4 = !{}
!5 = distinct !DISubprogram(name: "call_once<closure,()>", linkageName: "_ZN4core3ops8function6FnOnce9call_once17hb696bb321ac7e42dE", scope: !7, file: !6, line: 223, type: !11, isLocal: true, isDefinition: true, scopeLine: 223, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !21, variables: !4)
!6 = !DIFile(filename: "/checkout/src/libcore/ops/function.rs", directory: "")
!7 = !DINamespace(name: "FnOnce", scope: !8)
!8 = !DINamespace(name: "function", scope: !9)
!9 = !DINamespace(name: "ops", scope: !10)
!10 = !DINamespace(name: "core", scope: null)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !14}
!13 = !DIBasicType(name: "i32", size: 32, encoding: DW_ATE_signed)
!14 = !DICompositeType(tag: DW_TAG_structure_type, name: "closure", file: !15, size: 64, align: 64, elements: !16, identifier: "74e75f61ea86f71ae4e8f3fcfe8c48")
!15 = !DIFile(filename: "<unknown>", directory: "")
!16 = !{!17}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !14, file: !15, baseType: !18, size: 64, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "fn()", baseType: !19, size: 64, align: 64)
!19 = !DISubroutineType(types: !20)
!20 = !{null}
!21 = !{!22, !23}
!22 = !DITemplateTypeParameter(name: "Self", type: !14)
!23 = !DITemplateTypeParameter(name: "Args", type: !24)
!24 = !DIBasicType(name: "()", encoding: DW_ATE_unsigned)
!25 = !DILocalVariable(arg: 1, scope: !5, file: !26, line: 1, type: !14)
!26 = !DIFile(filename: "src/main.rs", directory: "")
!27 = !DILocation(line: 1, scope: !5)
!28 = !DILocalVariable(arg: 2, scope: !5, file: !26, line: 1, type: !24)
!29 = !DILocation(line: 223, scope: !5)
!30 = distinct !DISubprogram(name: "drop_in_place<closure>", linkageName: "_ZN4core3ptr13drop_in_place17ha5d9312d8a366706E", scope: !32, file: !31, line: 59, type: !33, isLocal: true, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !36, variables: !4)
!31 = !DIFile(filename: "/checkout/src/libcore/ptr.rs", directory: "")
!32 = !DINamespace(name: "ptr", scope: !10)
!33 = !DISubroutineType(types: !34)
!34 = !{null, !35}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut closure", baseType: !14, size: 64, align: 64)
!36 = !{!37}
!37 = !DITemplateTypeParameter(name: "T", type: !14)
!38 = !DILocalVariable(arg: 1, scope: !30, file: !26, line: 1, type: !35)
!39 = !DILocation(line: 1, scope: !30)
!40 = !DILocation(line: 59, scope: !30)
