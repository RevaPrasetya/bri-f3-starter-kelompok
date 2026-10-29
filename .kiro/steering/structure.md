---
inclusion: always
---

# Struktur repo

Sama dengan slide "Peta repo" di deck Hari 2 (Jumat 30 Okt).

```
AGENTS.md            aturan untuk semua agen (dimuat otomatis oleh Kiro)
CLAUDE.md GEMINI.md  mengimpor AGENTS.md untuk Claude dan Gemini (GEMINI.md juga ringkasan untuk Antigravity)
DESIGN.md            design system: token YAML + aturan (format DESIGN.md)
Prototipe.xcodeproj  proyek Xcode, di-commit (jangan diedit dengan tangan)
Config/              Proyek.xcconfig (nama app, bundle ID, sumber data), Supabase.example.xcconfig
docs/
  job-story.md       job story dan kriteria sukses
  PRD.md             produk, fitur, batasan
  userflow.md        alur dan state per layar
  tasks.md           task berurutan dengan cek penerimaan
  DECISIONS.md       log keputusan: kenapa perubahan dibuat
  prototype/            prototype HTML dari sesi Dana + screenshots/ (acuan, bukan kode; skill html-ke-swiftui)
  dari-html-ke-swiftui.md  langkah prototype HTML ke layar SwiftUI
App/                 entry point, navigasi, Info.plist
Core/                model dan logika murni tanpa UI
DesignSystem/        Tokens.swift dan komponen (PrimaryButton, dll.)
Features/[Layar]/    satu folder per layar: view + model
Services/            LayananData, LayananDummy (default), LayananSupabase, SumberData
Tests/               Swift Testing
bugs/                bug report + screenshot
supabase/            migration SQL dan seed (jalur opsional)
skills/              skill untuk agen; Kiro: bash scripts/pasang-skill.sh kiro (ke .kiro/skills/)
scripts/             mulai.sh, cek-build.sh, cek-rahasia.sh, simulator-demo.sh, pasang-skill.sh
.kiro/specs/[fitur]/ spec Kiro, opsional (requirements, design, tasks)
.kiro/steering/      file ini, product.md, tech.md
```

- File baru masuk ke folder yang sesuai. Folder kode adalah synchronized folder: file baru otomatis masuk target.
- Jangan membuat folder baru di root tanpa bertanya.
- `Prototipe.xcodeproj` ikut di-commit. Jangan diedit dengan tangan: setting proyek lewat MCP `xcode` atau oleh manusia di Xcode.
