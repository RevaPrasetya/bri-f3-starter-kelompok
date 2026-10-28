---
name: "[Nama app]"
colors:
  primary: "#5E5CE6"
  on-primary: "#FFFFFF"
  background: "#F2F2F7"
  surface: "#FFFFFF"
  text: "#1D1D1F"
  text-secondary: "#6E6E73"
  separator: "#E5E5EA"
  success: "#248A3D"
  warning: "#C93400"
  danger: "#FF453A"
typography:
  title:
    fontFamily: "SF Pro Rounded"
    fontSize: 34
    fontWeight: 700
  heading:
    fontFamily: "SF Pro"
    fontSize: 20
    fontWeight: 600
  body:
    fontFamily: "SF Pro"
    fontSize: 17
    fontWeight: 400
  caption:
    fontFamily: "SF Pro"
    fontSize: 15
    fontWeight: 400
  label:
    fontFamily: "SF Pro"
    fontSize: 13
    fontWeight: 600
rounded:
  sm: 8
  md: 14
  lg: 20
  button: full
spacing:
  scale: [4, 8, 16, 24, 32]
---

# DESIGN.md · [Nama app]

<!-- Isian kelima blueprint Dana: design system. Format DESIGN.md: token YAML di atas, prosa di bawah. Default starter ini memakai design system Apple sebagai platform dan satu aksen brand, sama seperti contoh di demo Dana. Bukan aset BRI.
Yang boleh diubah tim: warna primary (aksen), nada di Overview, dan aturan di Do's and Don'ts. Ubah juga DesignSystem/Tokens.swift bersamaan, lalu minta agen membaca ulang AGENTS.md. Hapus komentar ini setelah diisi. -->

## Overview

[Tiga kalimat: nada produk, apa yang selalu tampil besar, apa yang tidak boleh terjadi. Contoh: Tenang, jelas, terpercaya. Uang selalu tampil besar, tanpa desimal. Satu aksi utama per layar.]

## Colors

- `primary` (`Warna.utama`) hanya untuk aksi utama: tombol utama, tanda pilih, tautan. Bukan untuk kartu atau latar.
- `background` (`Warna.latar`) untuk latar layar, `surface` (`Warna.permukaan`) untuk kartu dan grup baris.
- Penamaan: `background` di sini sama dengan `surface` (#F2F2F7) di contoh Dana; `surface` di sini dipakai untuk kartu putih.
- `text` dan `text-secondary` (`Warna.teks`, `Warna.teksSekunder`) untuk teks. `separator` (`Warna.garis`) untuk pemisah dan tombol nonaktif.
- `success`, `warning`, `danger` (`Warna.sukses`, `Warna.peringatan`, `Warna.gagal`) hanya untuk status dan error.
- Mode gelap memakai padanan sistem; nilainya ada di `Tokens.swift`.

## Typography

Font sistem (SF). Semua lewat text style supaya ikut Dynamic Type: `title` → `Teks.nominal`, `heading` → `Teks.judul`, `body` → `Teks.isi` / `Teks.isiTebal`, `caption` → `Teks.keterangan`, `label` → `Teks.label`.

## Layout

Jarak dari skala 4 / 8 / 16 / 24 / 32 (`Space.xs` sampai `Space.xl`). Tombol utama di bawah, selebar layar, lewat `safeAreaInset`. Target sentuh minimal 44 pt.

## Elevation & Depth

Tanpa bayangan. Kedalaman dari warna: kartu `surface` di atas `background`.

## Shapes

Kartu `rounded.lg` (`Radius.l`). Ikon dan elemen kecil `rounded.sm`. Tombol utama kapsul (`rounded.button: full`).

## Components

| Komponen | Isi | Aturan |
| --- | --- | --- |
| `PrimaryButton(judul) { }` | Tombol utama kapsul, warna primary | Maksimal satu per layar. Label kata kerja + objek. Abu-abu saat `.disabled` |
| `BarisItem(ikon:judul:keterangan:nominal:terpilih:)` | Baris daftar umum | Satu elemen VoiceOver |
| `Kartu { }` | Wadah putih di atas latar abu | |
| `KeadaanKosong`, `KeadaanGagal`, `BarisMemuat` | Tiga state selain berhasil | Pesan: apa yang terjadi, kenapa, apa yang bisa dilakukan |
| `BelumDibangun(layar:task:)` | Penanda layar yang belum dibangun | |

## Do's and Don'ts

- Pakai token, jangan hex atau ukuran font langsung di view.
- Satu aksi utama per layar.
- Nominal lewat `Rupiah.format(_:)`: "Rp125.000", tanpa desimal.
- Copy Bahasa Indonesia, kalimat pendek, nada tenang.
- Jangan membuat komponen baru kalau yang di atas sudah cukup. Kalau perlu, catat dulu di `docs/context-gaps.md`.
