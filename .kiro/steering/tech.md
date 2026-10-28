---
inclusion: always
---

# Tech

Stack dan larangan ada di `AGENTS.md` bagian Stack, Desain dan Data. Bagian ini hanya untuk cara kerja di Kiro.

Kiro tidak bisa build aplikasi iOS sendiri. Build, run dan test lewat server MCP `MobileBuildMCP` (atau `xcode` kalau Xcode terbuka). Kalau MCP tidak tersedia, pakai terminal:

```bash
xcodebuild -scheme Prototipe -destination 'platform=iOS Simulator,name=iPhone 17 Pro' build
xcodebuild -scheme Prototipe -destination 'platform=iOS Simulator,name=iPhone 17 Pro' test
bash scripts/cek-build.sh    # build + test sekaligus, simulator iPhone 17 Pro
```

- Cari API Apple lewat MCP `sosumi` sebelum memakai API yang belum ada di proyek.
- Jangan mengedit `project.pbxproj`. File baru cukup dibuat di folder yang benar (synchronized folder). Perubahan setting proyek lewat MCP `xcode` (`xcrun mcpbridge`, Xcode terbuka) atau minta manusia mengubahnya di Xcode.
- Jangan menyimpan secret di repo atau di `.kiro/settings/mcp.json`.
- Task dianggap selesai kalau build bersih, test lulus, dan cek penerimaan di `tasks.md` terpenuhi. Laporkan hasil build dan test apa adanya.
