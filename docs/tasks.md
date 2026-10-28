# Tasks · [Nama fitur]

Draf v1 · 14 Okt 2026 · masih bisa diperbarui

<!-- Letakkan di docs/tasks.md. Turunkan dari prioritized flow dan Must di board sesi Dana: satu task per langkah atau per aturan, tambahkan "Cek penerimaan", lalu urutkan.

Aturan:
- Urut dari atas: task berikutnya boleh bergantung pada task sebelumnya.
- Satu task = satu diff yang bisa direview dalam 2 menit.
- Cek penerimaan harus bisa diperiksa: test lulus, preview tampil, atau langkah yang bisa diulang orang lain.
- Jumat 13.40: urutkan. Sebelum sprint 1 (14.10): pilih 3 task.

Hapus bagian contoh setelah kalian mengisi. -->

- [ ] 1. [Judul task]
  - Yang dikerjakan: [...]
  - File: [...]
  - Cek penerimaan: [...]

- [ ] 2. [Judul task]
  - Yang dikerjakan: [...]
  - File: [...]
  - Cek penerimaan: [...]

---

## Contoh: Tagih teman (`docs/tasks.md`)

- [ ] 1. Model dan layanan dummy
  - Yang dikerjakan: `Transaksi`, `Teman`, `Tagihan`; `LayananDummy` dengan 5 transaksi dan 6 kontak dummy, jeda buatan, dan saklar untuk memaksa error.
  - File: `Core/Model.swift`, `Services/LayananDummy.swift`
  - Cek penerimaan: test memuat 5 transaksi lulus; saklar error membuat pemanggilan gagal.

- [ ] 2. SplitCalculator (test dulu)
  - Yang dikerjakan: `SplitCalculator.bagi(total:orang:)` mengembalikan `perTeman` dan `pengirim`. `orang` = jumlah semua orang, termasuk pengirim. Bagian tiap teman dibulatkan ke atas ke rupiah penuh; bagian pengirim = total dikurangi bagian semua teman.
  - File: `Core/SplitCalculator.swift`, `Tests/SplitCalculatorTests.swift`
  - Cek penerimaan: test Swift Testing lulus untuk Rp240.000 / 4 orang (`perTeman` 60.000, `pengirim` 60.000) dan Rp100.000 / 3 orang (`perTeman` 33.334, `pengirim` 33.332); jumlah semua bagian sama dengan total.

- [ ] 3. Layar Buka transaksi
  - Yang dikerjakan: daftar transaksi dari riwayat, tombol "Tagih teman" pada transaksi terpilih.
  - File: `Features/PilihTransaksi/`
  - Cek penerimaan: 4 preview (berhasil, memuat, kosong, gagal) tampil; "Tagih teman" membuka Pilih teman.

- [ ] 4. Layar Pilih teman
  - Yang dikerjakan: daftar kontak dummy, pencarian, pilih banyak, tombol "Lanjut".
  - File: `Features/PilihTeman/`
  - Cek penerimaan: 4 preview tampil; "Lanjut" nonaktif bila belum ada teman terpilih.

- [ ] 5. Layar Bagi rata
  - Yang dikerjakan: ringkasan bagian tiap teman dan bagian pengirim dari `SplitCalculator`.
  - File: `Features/BagiRata/`
  - Cek penerimaan: angka di layar sama dengan hasil test task 2; preview kosong ("Pilih minimal satu teman") dan gagal ("Total tidak valid") tampil.

- [ ] 6. Layar Kirim tagihan
  - Yang dikerjakan: pratinjau pesan, share sheet dengan link bayar dummy per teman.
  - File: `Features/KirimLink/`
  - Cek penerimaan: share sheet terbuka di simulator; state gagal kirim tampil saat saklar error aktif.

- [ ] 7. Layar Pantau status dan uji kriteria sukses
  - Yang dikerjakan: status Lunas / Belum per teman; sambungkan layar 01–05 dengan `NavigationStack`.
  - File: `Features/PantauStatus/`, `App/`
  - Cek penerimaan: 4 preview tampil; satu orang di luar kelompok mengirim tagihan dari Buka transaksi sampai Pantau status dalam 60 detik tanpa bantuan, di Simulator atau perangkat.
