; ModuleID = '3rngp6bm2u2q5z0y-dfee7890c5bbf54aa3e71feee5193457.rs'
source_filename = "3rngp6bm2u2q5z0y-dfee7890c5bbf54aa3e71feee5193457.rs"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vtable.0 = private unnamed_addr constant { void (i8**)*, i64, i64, i32 (i8**)*, i32 (i8**)*, i32 (i8*)* } { void (i8**)* @_ZN4core3ptr13drop_in_place17ha5d9312d8a366706E, i64 8, i64 8, i32 (i8**)* @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h9448bb008a1e90f9E", i32 (i8**)* @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h9448bb008a1e90f9E", i32 (i8*)* @_ZN4core3ops8function6FnOnce9call_once17hb696bb321ac7e42dE }, align 8, !dbg !0
@__rustc_debug_gdb_scripts_section__ = linkonce_odr unnamed_addr constant [34 x i8] c"\01gdb_load_rust_pretty_printers.py\00", section ".debug_gdb_scripts", align 1

; std::rt::lang_start
; Function Attrs: uwtable
define hidden i64 @_ZN3std2rt10lang_start17he915d08c0f874a9fE(void ()* nonnull, i64, i8**) unnamed_addr #0 !dbg !16 {
start:
  %_7 = alloca i8*, align 8
  %argv = alloca i8**, align 8
  %argc = alloca i64, align 8
  %main = alloca void ()*, align 8
  store void ()* %0, void ()** %main, align 8
  call void @llvm.dbg.declare(metadata void ()** %main, metadata !29, metadata !DIExpression()), !dbg !31
  store i64 %1, i64* %argc, align 8
  call void @llvm.dbg.declare(metadata i64* %argc, metadata !32, metadata !DIExpression()), !dbg !31
  store i8** %2, i8*** %argv, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv, metadata !33, metadata !DIExpression()), !dbg !31
  %3 = load void ()*, void ()** %main, align 8, !dbg !34, !nonnull !4
  %4 = bitcast i8** %_7 to void ()**, !dbg !34
  store void ()* %3, void ()** %4, align 8, !dbg !34
  %5 = bitcast i8** %_7 to {}*, !dbg !34
  %6 = load i64, i64* %argc, align 8, !dbg !34
  %7 = load i8**, i8*** %argv, align 8, !dbg !34
; call std::rt::lang_start_internal
  %8 = call i64 @_ZN3std2rt19lang_start_internal17h7c38f1310577c409E({}* nonnull %5, {}* noalias nonnull readonly bitcast ({ void (i8**)*, i64, i64, i32 (i8**)*, i32 (i8**)*, i32 (i8*)* }* @vtable.0 to {}*), i64 %6, i8** %7), !dbg !34
  br label %bb1, !dbg !34

bb1:                                              ; preds = %start
  ret i64 %8, !dbg !35
}

; std::rt::lang_start::{{closure}}
; Function Attrs: uwtable
define hidden i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h9448bb008a1e90f9E"(i8** noalias readonly dereferenceable(8)) unnamed_addr #0 !dbg !36 {
start:
  %arg0 = alloca i8**, align 8
  store i8** %0, i8*** %arg0, align 8
  call void @llvm.dbg.declare(metadata i8*** %arg0, metadata !42, metadata !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 0)), !dbg !43
  %1 = load i8**, i8*** %arg0, align 8, !dbg !44, !nonnull !4
  %2 = bitcast i8** %1 to void ()**, !dbg !44
  %3 = load void ()*, void ()** %2, align 8, !dbg !44, !nonnull !4
  call void %3(), !dbg !44
  br label %bb1, !dbg !44

bb1:                                              ; preds = %start
; call <() as std::process::Termination>::report
  %4 = call i32 @"_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h1eb67535e7eebacfE"(), !dbg !44
  br label %bb2, !dbg !44

bb2:                                              ; preds = %bb1
  ret i32 %4, !dbg !44
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; core::ptr::drop_in_place
declare hidden void @_ZN4core3ptr13drop_in_place17ha5d9312d8a366706E(i8**) unnamed_addr #2

; core::ops::function::FnOnce::call_once
declare hidden i32 @_ZN4core3ops8function6FnOnce9call_once17hb696bb321ac7e42dE(i8* nonnull) unnamed_addr #2

; std::rt::lang_start_internal
declare i64 @_ZN3std2rt19lang_start_internal17h7c38f1310577c409E({}* nonnull, {}* noalias nonnull readonly, i64, i8**) unnamed_addr #2

; <() as std::process::Termination>::report
; Function Attrs: inlinehint
declare hidden i32 @"_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h1eb67535e7eebacfE"() unnamed_addr #3

attributes #0 = { uwtable "probe-stack"="__rust_probestack" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "probe-stack"="__rust_probestack" }
attributes #3 = { inlinehint "probe-stack"="__rust_probestack" }

!llvm.module.flags = !{!11, !12}
!llvm.dbg.cu = !{!13}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "vtable", linkageName: "vtable", scope: null, file: !2, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "<unknown>", directory: "")
!3 = !DICompositeType(tag: DW_TAG_structure_type, name: "vtable", file: !2, align: 64, flags: DIFlagArtificial, elements: !4, vtableHolder: !5, identifier: "vtable")
!4 = !{}
!5 = !DICompositeType(tag: DW_TAG_structure_type, name: "closure", file: !2, size: 64, align: 64, elements: !6, identifier: "74e75f61ea86f71ae4e8f3fcfe8c48")
!6 = !{!7}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !5, file: !2, baseType: !8, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "fn()", baseType: !9, size: 64, align: 64)
!9 = !DISubroutineType(types: !10)
!10 = !{null}
!11 = !{i32 7, !"PIE Level", i32 2}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !14, producer: "clang LLVM (rustc version 1.28.0-nightly (e3bf634e0 2018-06-28))", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !15)
!14 = !DIFile(filename: "src/main.rs", directory: "/media/dbusaba/SharedData/University/Research/Rust/histogram")
!15 = !{!0}
!16 = distinct !DISubprogram(name: "lang_start<()>", linkageName: "_ZN3std2rt10lang_start17he915d08c0f874a9fE", scope: !18, file: !17, line: 71, type: !20, isLocal: true, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: false, unit: !13, templateParams: !26, variables: !4)
!17 = !DIFile(filename: "/checkout/src/libstd/rt.rs", directory: "")
!18 = !DINamespace(name: "rt", scope: !19)
!19 = !DINamespace(name: "std", scope: null)
!20 = !DISubroutineType(types: !21)
!21 = !{!22, !8, !22, !23}
!22 = !DIBasicType(name: "isize", size: 64, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const *const u8", baseType: !24, size: 64, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const u8", baseType: !25, size: 64, align: 64)
!25 = !DIBasicType(name: "u8", size: 8, encoding: DW_ATE_unsigned)
!26 = !{!27}
!27 = !DITemplateTypeParameter(name: "T", type: !28)
!28 = !DIBasicType(name: "()", encoding: DW_ATE_unsigned)
!29 = !DILocalVariable(name: "main", arg: 1, scope: !16, file: !30, line: 1, type: !8)
!30 = !DIFile(filename: "src/main.rs", directory: "")
!31 = !DILocation(line: 1, scope: !16)
!32 = !DILocalVariable(name: "argc", arg: 2, scope: !16, file: !30, line: 1, type: !22)
!33 = !DILocalVariable(name: "argv", arg: 3, scope: !16, file: !30, line: 1, type: !23)
!34 = !DILocation(line: 74, scope: !16)
!35 = !DILocation(line: 75, scope: !16)
!36 = distinct !DISubprogram(name: "{{closure}}<()>", linkageName: "_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h9448bb008a1e90f9E", scope: !37, file: !17, line: 74, type: !38, isLocal: true, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: false, unit: !13, templateParams: !26, variables: !4)
!37 = !DINamespace(name: "lang_start", scope: !18)
!38 = !DISubroutineType(types: !39)
!39 = !{!40, !41}
!40 = !DIBasicType(name: "i32", size: 32, encoding: DW_ATE_signed)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&closure", baseType: !5, size: 64, align: 64)
!42 = !DILocalVariable(name: "main", scope: !36, file: !30, line: 1, type: !8, align: 8)
!43 = !DILocation(line: 1, scope: !36)
!44 = !DILocation(line: 74, scope: !36)
