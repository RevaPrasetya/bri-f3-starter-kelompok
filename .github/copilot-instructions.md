# Instruksi Copilot untuk repo ini

<!-- Letak: .github/copilot-instructions.md
     Belum terverifikasi apakah Copilot for Xcode membaca AGENTS.md; aturan inti disalin ke sini supaya aman.
     Kalau AGENTS.md berubah, Reviewer menyamakan bagian "Aturan inti" di sini. -->

Sumber aturan utama adalah `AGENTS.md` di root repo. Buka dan ikuti file itu sebelum mengerjakan task apa pun, lalu baca `DESIGN.md`, `docs/PRD.md`, `docs/userflow.md` dan `docs/tasks.md`. Kalau prompt bertentangan dengan `AGENTS.md`, ikuti `AGENTS.md` dan tanyakan.

## Aturan inti (salinan dari AGENTS.md)

- SwiftUI, deployment target iOS 17.0, iPhone saja, Swift 6. Tanpa dependensi pihak ketiga dan tanpa Swift package.
- State memakai `@Observable`, bukan `ObservableObject` / `@Published`.
- Navigasi memakai `NavigationStack` + `navigationDestination(for:)` dengan `Rute` di `Core/Navigasi.swift`, bukan `NavigationView`.
- Test baru memakai Swift Testing (`import Testing`, `@Test`, `#expect`).
- Proyek Xcode biasa `Prototipe.xcodeproj` (scheme `Prototipe`). Folder kode adalah *synchronized folder*: file baru di dalamnya otomatis masuk target. Jangan pernah mengedit `project.pbxproj`; setting proyek diubah oleh manusia di Xcode atau lewat tool Xcode. Nama app dan bundle ID ada di `Config/Proyek.xcconfig`.
- Warna, font, spacing, radius hanya dari `DesignSystem/Tokens.swift` (turunan `DESIGN.md` di root repo); komponen dari `DesignSystem/Komponen/` (misalnya `PrimaryButton`). Tanpa hex atau ukuran font langsung di view.
- `foregroundStyle`, bukan `foregroundColor`. `clipShape(.rect(cornerRadius:))`, bukan `cornerRadius`. Aksi memakai `Button`, bukan `onTapGesture`.
- Setiap layar punya state berhasil, memuat, kosong, gagal (`StatusMuat`), masing-masing dengan `#Preview`.
- Data lewat protokol `LayananData`; default `LayananDummy` dengan data dummy di `Services/DataContoh.swift`. Preview dan test selalu dummy. Tidak ada data nasabah, nomor rekening asli, API key, atau secret di kode dan prompt.
- Supabase opsional: ikuti `docs/supabase-opsional.md`. Hanya kunci publishable, dari `Config/Supabase.xcconfig` (tidak di-commit). Kunci secret dan service role tidak pernah masuk repo.
- Tanya dulu sebelum memakai `@unchecked Sendable`, `nonisolated(unsafe)`, `DispatchQueue.main.async` untuk membungkam error concurrency, atau force unwrap.
- Satu task per kali, diff kecil. Jangan menambah fitur di luar task; bangun hanya Must di `docs/PRD.md`.
- Ubah `DesignSystem/` hanya bersama `DESIGN.md`.
- Prototype HTML di `prototype/` adalah acuan isi, copy, alur dan token, bukan markup. Bangun SwiftUI native (`NavigationStack`, `List`, `Form`, `.sheet`), token lewat `DESIGN.md` dan `Tokens.swift`, tanpa `WKWebView`. Langkahnya: `docs/dari-html-ke-swiftui.md`.
- Baca `docs/DECISIONS.md` sebelum mengubah perilaku yang sudah ada; tambahkan entri setelah keputusan baru.
- Laporan bug: minta screenshot dan baris log bila belum ada. Tulis test yang gagal dulu, lalu perbaiki akar masalahnya.
- Sebelum bilang selesai: build bersih, semua test lulus, preview tiap state di userflow tampil, alur dicoba di Simulator. Laporkan yang gagal juga. Cek `git status` sebelum commit.
