# User flow · [Nama fitur]

Draf v1 · 14 Okt 2026 · masih bisa diperbarui

<!-- User flow memberi tahu agen apa yang dilakukan pengguna, di mana ia berada di app, dan apa yang ia butuhkan di setiap langkah. Ambil langkahnya dari prioritized flow (irisan 1) di sesi Dana. Satu baris = satu layar. Isi juga tabel state: agen hanya membangun state yang tertulis. Hapus bagian contoh setelah kalian mengisi. -->

## Langkah

| # | Layar | Pengguna ada di mana | Yang ia lakukan | Yang ia butuhkan (data/info) | Ke mana selanjutnya |
| --- | --- | --- | --- | --- | --- |
| 01 | [...] | [...] | [...] | [...] | [...] |
| 02 | [...] | [...] | [...] | [...] | [...] |

## State per layar

<!-- Kalau satu state tidak mungkin terjadi, tulis "Tidak ada" dan alasannya. -->

| Layar | Berhasil | Memuat | Kosong | Gagal |
| --- | --- | --- | --- | --- |
| [...] | [...] | [...] | [...] | [...] |

---

## Contoh: Tagih teman

Irisan 1 dari board sesi Dana: buka transaksi → pilih teman → tentukan bagian → kirim tagihan → pantau status. Scope hanya Must; bagi per item masuk Could.

| # | Layar | Pengguna ada di mana | Yang ia lakukan | Yang ia butuhkan | Ke mana selanjutnya |
| --- | --- | --- | --- | --- | --- |
| 01 | Buka transaksi | Baru selesai membayar makan, membuka riwayat transaksi | Memilih "Makan malam · Warung Bu Sri · Rp240.000", menekan "Tagih teman" | Daftar transaksi: merchant, waktu, nominal | → 02 |
| 02 | Pilih teman | Daftar kontak | Memilih teman yang ikut makan (Ayu, Bima, Citra) | Kontak dummy, pencarian, jumlah terpilih | "Lanjut" → 03 |
| 03 | Tentukan bagian | Ringkasan pembagian | Mengecek bagian tiap orang | Total, jumlah orang, bagian tiap teman (Rp60.000), bagian pengirim | "Lanjut" → 04 |
| 04 | Kirim tagihan | Pratinjau pesan | Mengirim link bayar lewat chat | Pesan yang sopan, link per teman, share sheet | Terkirim → 05 |
| 05 | Pantau status | Daftar tagihan aktif | Melihat siapa yang sudah bayar | Status per teman: Lunas / Belum | Selesai, atau kembali ke 01 |

State wajib dari sesi Dana: memuat, kosong, gagal kirim.

| Layar | Berhasil | Memuat | Kosong | Gagal |
| --- | --- | --- | --- | --- |
| 01 Buka transaksi | Daftar transaksi | Placeholder baris | "Belum ada transaksi minggu ini." | "Riwayat belum bisa dimuat. Periksa koneksi, lalu coba lagi." + Coba lagi |
| 02 Pilih teman | Daftar kontak, jumlah terpilih | Placeholder baris | "Belum ada kontak. Tambahkan dari aplikasi Kontak." | "Kontak belum bisa dimuat." + Coba lagi |
| 03 Tentukan bagian | Bagian tiap orang | Tidak ada: dihitung di perangkat | "Pilih minimal satu teman." + kembali ke 02 | "Total tidak valid." (nominal 0 atau kosong) |
| 04 Kirim tagihan | "Link terkirim ke 3 teman" | "Membuat link..." | "Belum ada teman yang akan ditagih." + kembali ke 02 | Gagal kirim: "Link belum terkirim. Koneksi terputus saat membuat link. Coba lagi." |
| 05 Pantau status | Ayu Belum · Bima Lunas · Citra Belum | Placeholder baris | "Belum ada tagihan aktif." | "Status belum bisa dimuat." + Coba lagi |
