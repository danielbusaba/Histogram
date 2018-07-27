; ModuleID = 'ieeqts0y94a8uyk-dfee7890c5bbf54aa3e71feee5193457.rs'
source_filename = "ieeqts0y94a8uyk-dfee7890c5bbf54aa3e71feee5193457.rs"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__rustc_debug_gdb_scripts_section__ = linkonce_odr unnamed_addr constant [34 x i8] c"\01gdb_load_rust_pretty_printers.py\00", section ".debug_gdb_scripts", align 1

; histogram::main
; Function Attrs: uwtable
define internal void @_ZN9histogram4main17h48154e8eee65fbdeE() unnamed_addr #0 !dbg !5 {
start:
  ret void, !dbg !9
}

define i32 @main(i32, i8**) unnamed_addr {
top:
  %2 = load volatile i8, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__rustc_debug_gdb_scripts_section__, i32 0, i32 0), align 1
  %3 = sext i32 %0 to i64
; call std::rt::lang_start
  %4 = call i64 @_ZN3std2rt10lang_start17he915d08c0f874a9fE(void ()* @_ZN9histogram4main17h48154e8eee65fbdeE, i64 %3, i8** %1)
  %5 = trunc i64 %4 to i32
  ret i32 %5
}

; std::rt::lang_start
declare hidden i64 @_ZN3std2rt10lang_start17he915d08c0f874a9fE(void ()* nonnull, i64, i8**) unnamed_addr #1

attributes #0 = { uwtable "probe-stack"="__rust_probestack" }
attributes #1 = { "probe-stack"="__rust_probestack" }

!llvm.module.flags = !{!0, !1}
!llvm.dbg.cu = !{!2}

!0 = !{i32 7, !"PIE Level", i32 2}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !3, producer: "clang LLVM (rustc version 1.28.0-nightly (e3bf634e0 2018-06-28))", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!3 = !DIFile(filename: "src/main.rs", directory: "/media/dbusaba/SharedData/University/Research/Rust/histogram")
!4 = !{}
!5 = distinct !DISubprogram(name: "main", linkageName: "_ZN9histogram4main17h48154e8eee65fbdeE", scope: !6, file: !3, line: 4, type: !7, isLocal: true, isDefinition: true, scopeLine: 4, flags: DIFlagPrototyped | DIFlagMainSubprogram, isOptimized: false, unit: !2, templateParams: !4, variables: !4)
!6 = !DINamespace(name: "histogram", scope: null)
!7 = !DISubroutineType(types: !8)
!8 = !{null}
!9 = !DILocation(line: 7, scope: !10)
!10 = !DILexicalBlockFile(scope: !5, file: !3, discriminator: 0)
