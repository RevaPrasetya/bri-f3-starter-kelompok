# DECISIONS.md · [Nama kelompok]

Draf v1 · 14 Okt 2026 · masih bisa diperbarui

<!-- Log keputusan. Agen tidak ingat kenapa sebuah perubahan dibuat di sesi sebelumnya. Tanpa catatan ini, agen bisa "memperbaiki" keputusan yang disengaja.

- Satu entri per keputusan yang mengubah perilaku app, scope, atau arsitektur. Perubahan kecil tidak perlu dicatat.
- Entri terbaru di bawah, supaya agen cukup menambah di akhir file.
- Boleh ditulis agen ("Setelah selesai, tambahkan satu entri di DECISIONS.md"), tapi Reviewer yang memeriksa.
- Commit message memakai format: apa · kenapa · dampak.

Hapus contoh setelah kalian menulis entri pertama. -->

## [Tanggal] · [Keputusan singkat]

- **Keputusan:** [...]
- **Alasan:** [...]
- **Alternatif yang ditolak:** [...]
- **Dampak:** [file, layar, atau test yang terpengaruh]
- **Commit:** [`hash`]

---

## Contoh: Tagih teman

## 30 Okt 2026 · Bagi rata dulu, bagi per item nanti

- **Keputusan:** prototipe hanya mendukung bagi rata. Bagi per item masuk Could di MoSCoW.
- **Alasan:** kriteria sukses adalah mengirim tagihan dalam 60 detik. Bagi per item menambah satu layar dan input per item, dan belum ada bukti pengguna membutuhkannya.
- **Alternatif yang ditolak:** bagi per item sejak awal; scan struk.
- **Dampak:** tidak ada layar input item. Agen tidak boleh menambah pilihan "per item" di layar Bagi rata tanpa entri baru di sini.
- **Commit:** `9c0d7b3` · `Batasi Bagi rata ke pembagian rata · fokus ke kriteria 60 detik · layar input item tidak dibuat`

## 30 Okt 2026 · Pembulatan ke atas untuk teman

- **Keputusan:** bagian tiap teman dibulatkan ke atas ke rupiah penuh; bagian pengirim = total dikurangi bagian semua teman.
- **Alasan:** aturan produk di PRD. Jumlah semua bagian selalu sama dengan total, dan teman tidak pernah ditagih kurang.
- **Alternatif yang ditolak:** pembulatan biasa (jumlah bisa selisih Rp1 dari total); membagi sisa ke teman pertama (terasa tidak adil bagi satu orang).
- **Dampak:** `Core/SplitCalculator.swift`, `Tests/SplitCalculatorTests.swift`, layar Bagi rata. Rp100.000 untuk 3 orang: teman Rp33.334, pengirim Rp33.332.
- **Commit:** `4f2e9a1` · `Bulatkan bagian teman ke atas · jumlah bagian harus sama dengan total · bagian pengirim bisa Rp1–2 lebih kecil`
