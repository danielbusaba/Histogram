; ModuleID = '4oc10dk278mpk1vy-dfee7890c5bbf54aa3e71feee5193457.rs'
source_filename = "4oc10dk278mpk1vy-dfee7890c5bbf54aa3e71feee5193457.rs"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__rustc_debug_gdb_scripts_section__ = linkonce_odr unnamed_addr constant [34 x i8] c"\01gdb_load_rust_pretty_printers.py\00", section ".debug_gdb_scripts", align 1

; <() as std::process::Termination>::report
; Function Attrs: inlinehint uwtable
define hidden i32 @"_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h1eb67535e7eebacfE"() unnamed_addr #0 !dbg !5 {
start:
  %self = alloca {}, align 1
  call void @llvm.dbg.declare(metadata {}* %self, metadata !14, metadata !DIExpression()), !dbg !16
; call <std::process::ExitCode as std::process::Termination>::report
  %0 = call i32 @"_ZN68_$LT$std..process..ExitCode$u20$as$u20$std..process..Termination$GT$6report17h12d8117e4ba57adeE"(i8 0), !dbg !17
  br label %bb1, !dbg !17

bb1:                                              ; preds = %start
  ret i32 %0, !dbg !17
}

; <std::process::ExitCode as std::process::Termination>::report
; Function Attrs: inlinehint uwtable
define internal i32 @"_ZN68_$LT$std..process..ExitCode$u20$as$u20$std..process..Termination$GT$6report17h12d8117e4ba57adeE"(i8) unnamed_addr #0 !dbg !18 {
start:
  %self = alloca i8, align 1
  store i8 %0, i8* %self, align 1
  call void @llvm.dbg.declare(metadata i8* %self, metadata !33, metadata !DIExpression()), !dbg !34
; call std::sys::unix::process::process_common::ExitCode::as_i32
  %1 = call i32 @_ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h955d27fe3b75717eE(i8* noalias readonly dereferenceable(1) %self), !dbg !35
  br label %bb1, !dbg !35

bb1:                                              ; preds = %start
  ret i32 %1, !dbg !36
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; std::sys::unix::process::process_common::ExitCode::as_i32
; Function Attrs: inlinehint
declare hidden i32 @_ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h955d27fe3b75717eE(i8* noalias readonly dereferenceable(1)) unnamed_addr #2

attributes #0 = { inlinehint uwtable "probe-stack"="__rust_probestack" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { inlinehint "probe-stack"="__rust_probestack" }

!llvm.module.flags = !{!0, !1}
!llvm.dbg.cu = !{!2}

!0 = !{i32 7, !"PIE Level", i32 2}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !3, producer: "clang LLVM (rustc version 1.28.0-nightly (e3bf634e0 2018-06-28))", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!3 = !DIFile(filename: "src/main.rs", directory: "/media/dbusaba/SharedData/University/Research/Rust/histogram")
!4 = !{}
!5 = distinct !DISubprogram(name: "report", linkageName: "_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h1eb67535e7eebacfE", scope: !7, file: !6, line: 1465, type: !10, isLocal: true, isDefinition: true, scopeLine: 1465, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !4, variables: !4)
!6 = !DIFile(filename: "/checkout/src/libstd/process.rs", directory: "")
!7 = !DINamespace(name: "{{impl}}", scope: !8)
!8 = !DINamespace(name: "process", scope: !9)
!9 = !DINamespace(name: "std", scope: null)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !13}
!12 = !DIBasicType(name: "i32", size: 32, encoding: DW_ATE_signed)
!13 = !DIBasicType(name: "()", encoding: DW_ATE_unsigned)
!14 = !DILocalVariable(name: "self", arg: 1, scope: !5, file: !15, line: 1, type: !13)
!15 = !DIFile(filename: "src/main.rs", directory: "")
!16 = !DILocation(line: 1, scope: !5)
!17 = !DILocation(line: 1465, scope: !5)
!18 = distinct !DISubprogram(name: "report", linkageName: "_ZN68_$LT$std..process..ExitCode$u20$as$u20$std..process..Termination$GT$6report17h12d8117e4ba57adeE", scope: !7, file: !6, line: 1495, type: !19, isLocal: true, isDefinition: true, scopeLine: 1495, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !4, variables: !4)
!19 = !DISubroutineType(types: !20)
!20 = !{!12, !21}
!21 = !DICompositeType(tag: DW_TAG_structure_type, name: "ExitCode", scope: !8, file: !22, size: 8, align: 8, elements: !23, identifier: "2506950c378e068b57f24b8962c1608e")
!22 = !DIFile(filename: "<unknown>", directory: "")
!23 = !{!24}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !21, file: !22, baseType: !25, size: 8, align: 8)
!25 = !DICompositeType(tag: DW_TAG_structure_type, name: "ExitCode", scope: !26, file: !22, size: 8, align: 8, elements: !30, identifier: "e49e9369ae54251d48fa9fd38dc92d0c")
!26 = !DINamespace(name: "process_common", scope: !27)
!27 = !DINamespace(name: "process", scope: !28)
!28 = !DINamespace(name: "unix", scope: !29)
!29 = !DINamespace(name: "sys", scope: !9)
!30 = !{!31}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !25, file: !22, baseType: !32, size: 8, align: 8)
!32 = !DIBasicType(name: "u8", size: 8, encoding: DW_ATE_unsigned)
!33 = !DILocalVariable(name: "self", arg: 1, scope: !18, file: !15, line: 1, type: !21)
!34 = !DILocation(line: 1, scope: !18)
!35 = !DILocation(line: 1496, scope: !18)
!36 = !DILocation(line: 1497, scope: !18)
