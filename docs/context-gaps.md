# Context gaps · [Nama kelompok]

Draf v1 · 14 Okt 2026 · masih bisa diperbarui

<!-- Setiap kali agen salah, tulis satu baris di sini sebelum memperbaikinya. Perbaikannya masuk ke konteks (AGENTS.md, skill, MCP, PRD.md, userflow.md, DESIGN.md), bukan ke prompt. Prinsipnya sama dengan studi kasus Dana: perbaiki sistemnya, bukan prompt-nya.

Kalau penyebabnya design system (warna salah, komponen dikarang, state hilang), perbaikannya masuk ke DESIGN.md dan Tokens.swift.

Diisi oleh Tester. Dibahas di checkpoint sprint 0 (13.25), standup sprint 1 (14.50) dan check-in 15.30. Hapus baris contoh setelah kalian mulai mengisi. -->

| Waktu | Agen salah apa | Konteks yang kurang | Perbaikan yang ditambahkan | Berhasil? |
| --- | --- | --- | --- | --- |
| Jum 13.12 | Layar Pilih teman memakai `ObservableObject` dan `NavigationView` | Skill | Pasang skill SwiftUI Pro; tambah aturan `@Observable` dan `NavigationStack` di `AGENTS.md` | Ya, generate ulang sudah benar |
| Jum 13.30 | Tombol "Kirim link" memakai biru default, warna brand tidak dipakai | Design | Tambah aturan "warna hanya dari `DesignSystem/Tokens.swift`" di `AGENTS.md`; `action-primary` ditambahkan ke `DESIGN.md` | Ya |
|  |  |  |  |  |

Pilihan kolom "Konteks yang kurang": aturan · skill · MCP · PRD · user flow · design.
