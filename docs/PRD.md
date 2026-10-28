# PRD · [Nama fitur]

Draf v1 · 14 Okt 2026 · masih bisa diperbarui

<!-- PRD memberi tahu agen tentang produk, fitur, tech dan design system. Isi singkat: satu halaman cukup. Sebagian besar isinya sudah ada di board kelompok dari sesi Dana (blueprint: job story, prioritized flow, MoSCoW, kriteria sukses). Hapus bagian "Contoh: Tagih teman" setelah kalian mengisi. -->

## Produk & masalah

[Apa produknya, dalam satu kalimat. Masalah apa yang diselesaikan, dari synthesis pagi.]

## Pengguna & job story

- Pengguna: [siapa, dalam momen apa]
- Job story: [Ketika ..., saya ingin ..., agar ...]
- Asumsi paling berisiko: [Kami percaya ...]

## Kriteria sukses

<!-- Rumus Dana: [berapa banyak] [siapa] [melakukan apa] [dalam batas apa]. Tulis ambangnya sebelum menguji. -->

1. [...]
2. [...]

## Feature scope (MoSCoW)

<!-- Dari board sesi Dana. Setiap Must menempel ke satu langkah irisan dan satu kriteria. Prototipe hanya membangun Must. -->

| | Fitur | Langkah di user flow |
| --- | --- | --- |
| Must | [...] | [...] |
| Should | [...] | Antrean berikutnya |
| Could | [...] | Antrean berikutnya |
| Won't | [...] | Tidak dibangun |

## User flow

Lihat `userflow.md`.

## Tech

- Platform: iOS 17+, iPhone, SwiftUI
- Arsitektur: [layar, model, sumber data]
- Data: [dari mana, dummy atau mock]
- Aturan bisnis yang tidak terlihat di layar: [...]

## Design system

[Rujuk `DESIGN.md` (root repo) dan `DesignSystem/Tokens.swift`. Sebutkan komponen yang dipakai.]

## Batasan

- Data: [...]
- Platform: [...]
- Lisensi: [...]

## Pertanyaan terbuka

- [...]

---

## Contoh: Tagih teman

**Produk & masalah.** Fitur di aplikasi mobile banking untuk menagih bagian teman setelah makan bersama. Nasabah enggan menagih langsung. Patungan terjadi di chat grup dan bukti transfer tercecer.

**Pengguna & job story**

- Pengguna: nasabah muda yang baru membayar makan bersama teman.
- Job story: Ketika selesai makan bersama teman, saya ingin menagih bagian mereka dalam satu menit, agar tidak ada yang canggung.
- Asumsi paling berisiko: Kami percaya teman mau membayar lewat link.

**Kriteria sukses**

1. Kirim: 4 dari 5 penguji mengirim tagihan dalam 60 detik tanpa bantuan.
2. Bayar: 4 dari 5 penguji membayar lewat link tanpa bantuan.

**Feature scope (MoSCoW)**

| | Fitur | Langkah di user flow |
| --- | --- | --- |
| Must | Pilih dari riwayat transaksi | 01 Buka transaksi |
| Must | Pilih teman dari kontak (dummy) | 02 Pilih teman |
| Must | Bagi rata otomatis | 03 Tentukan bagian |
| Must | Kirim link lewat chat | 04 Kirim tagihan |
| Must | Status lunas atau belum | 05 Pantau status |
| Should | Pengingat otomatis · Pilih dari grup chat | Antrean berikutnya |
| Could | Bagi per item · Scan struk · QR di meja | Antrean berikutnya |
| Won't | Cicilan patungan · Chat di dalam aplikasi | Tidak dibangun |

**Tech**

- iOS 17+, iPhone, SwiftUI, `@Observable`, `NavigationStack`.
- Data dari `LayananDummy` di `Services/`: 5 transaksi, 6 kontak (Ayu, Bima, Citra, dan lainnya). Tidak ada backend. Link bayar adalah URL dummy. Status bayar disimulasikan.
- Aturan bagi rata (keputusan produk, dicatat di `DECISIONS.md`): nominal disimpan sebagai `Int` rupiah. Bagian tiap teman dibulatkan ke atas ke rupiah penuh; bagian pengirim = total dikurangi bagian semua teman. Rp100.000 untuk 3 orang: tiap teman Rp33.334, pengirim Rp33.332. Logikanya di `SplitCalculator.bagi(total:orang:)`.

**Design system.** `DESIGN.md` (format DESIGN.md, indigo hanya untuk aksi utama, tombol kapsul), `DesignSystem/Tokens.swift` dan komponennya. List row untuk teman dan status. Contoh memakai design system Apple; aset BRI tidak dipakai.

**Batasan**

- Data: dummy, tanpa data nasabah ("Budi Contoh").
- Platform: iOS 17+, tanpa package pihak ketiga.
- Lisensi: hanya SF Symbols dan aset buatan sendiri.

**Pertanyaan terbuka**

- Bagaimana teman yang tidak punya aplikasi BRI membayar?
- Apakah bagi rata dianggap adil? (asumsi lain di board, belum ada bukti)
