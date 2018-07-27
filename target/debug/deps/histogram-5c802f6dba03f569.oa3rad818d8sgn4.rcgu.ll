; ModuleID = 'oa3rad818d8sgn4-dfee7890c5bbf54aa3e71feee5193457.rs'
source_filename = "oa3rad818d8sgn4-dfee7890c5bbf54aa3e71feee5193457.rs"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__rustc_debug_gdb_scripts_section__ = linkonce_odr unnamed_addr constant [34 x i8] c"\01gdb_load_rust_pretty_printers.py\00", section ".debug_gdb_scripts", align 1

; std::sys::unix::process::process_common::ExitCode::as_i32
; Function Attrs: inlinehint uwtable
define hidden i32 @_ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h955d27fe3b75717eE(i8* noalias readonly dereferenceable(1)) unnamed_addr #0 !dbg !5 {
start:
  %self = alloca i8*, align 8
  store i8* %0, i8** %self, align 8
  call void @llvm.dbg.declare(metadata i8** %self, metadata !21, metadata !DIExpression()), !dbg !23
  %1 = load i8*, i8** %self, align 8, !dbg !24, !nonnull !4
  %2 = load i8, i8* %1, align 1, !dbg !24
  %3 = icmp ule i8 %2, -1, !dbg !24
  call void @llvm.assume(i1 %3), !dbg !24
  %4 = zext i8 %2 to i32, !dbg !24
  ret i32 %4, !dbg !25
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.assume(i1) #2

attributes #0 = { inlinehint uwtable "probe-stack"="__rust_probestack" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.dbg.cu = !{!2}

!0 = !{i32 7, !"PIE Level", i32 2}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !3, producer: "clang LLVM (rustc version 1.28.0-nightly (e3bf634e0 2018-06-28))", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!3 = !DIFile(filename: "src/main.rs", directory: "/media/dbusaba/SharedData/University/Research/Rust/histogram")
!4 = !{}
!5 = distinct !DISubprogram(name: "as_i32", linkageName: "_ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h955d27fe3b75717eE", scope: !7, file: !6, line: 408, type: !17, isLocal: true, isDefinition: true, scopeLine: 408, flags: DIFlagPrototyped, isOptimized: false, unit: !2, templateParams: !4, variables: !4)
!6 = !DIFile(filename: "/checkout/src/libstd/sys/unix/process/process_common.rs", directory: "")
!7 = !DICompositeType(tag: DW_TAG_structure_type, name: "ExitCode", scope: !9, file: !8, size: 8, align: 8, elements: !14, identifier: "e49e9369ae54251d48fa9fd38dc92d0c")
!8 = !DIFile(filename: "<unknown>", directory: "")
!9 = !DINamespace(name: "process_common", scope: !10)
!10 = !DINamespace(name: "process", scope: !11)
!11 = !DINamespace(name: "unix", scope: !12)
!12 = !DINamespace(name: "sys", scope: !13)
!13 = !DINamespace(name: "std", scope: null)
!14 = !{!15}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !7, file: !8, baseType: !16, size: 8, align: 8)
!16 = !DIBasicType(name: "u8", size: 8, encoding: DW_ATE_unsigned)
!17 = !DISubroutineType(types: !18)
!18 = !{!19, !20}
!19 = !DIBasicType(name: "i32", size: 32, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&std::sys::unix::process::process_common::ExitCode", baseType: !7, size: 64, align: 64)
!21 = !DILocalVariable(name: "self", arg: 1, scope: !5, file: !22, line: 1, type: !20)
!22 = !DIFile(filename: "src/main.rs", directory: "")
!23 = !DILocation(line: 1, scope: !5)
!24 = !DILocation(line: 409, scope: !5)
!25 = !DILocation(line: 410, scope: !5)
