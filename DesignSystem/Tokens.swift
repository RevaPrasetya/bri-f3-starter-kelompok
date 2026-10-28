import SwiftUI
import UIKit

// Token dari DESIGN.md (root repo). Default starter: design system Apple + satu aksen brand,
// sama dengan contoh di sesi Dana (F2). Ganti aksen tim di DESIGN.md dan di file ini bersamaan.
// Jangan menulis hex atau ukuran font langsung di view.

enum Warna {
    // DESIGN.md: background, surface, primary, on-primary, text, text-secondary, separator, success, warning, danger
    static let latar = Color(terang: 0xF2F2F7, gelap: 0x000000)
    static let permukaan = Color(terang: 0xFFFFFF, gelap: 0x1C1C1E)
    static let utama = Color(terang: 0x5E5CE6, gelap: 0x7D7AFF)   // aksen tim: ganti di sini dan di DESIGN.md
    static let utamaTeks = Color(terang: 0xFFFFFF, gelap: 0xFFFFFF)
    static let teks = Color(terang: 0x1D1D1F, gelap: 0xF5F5F7)
    static let teksSekunder = Color(terang: 0x6E6E73, gelap: 0x98989D)
    static let garis = Color(terang: 0xE5E5EA, gelap: 0x38383A)
    static let sukses = Color(terang: 0x248A3D, gelap: 0x30D158)
    static let peringatan = Color(terang: 0xC93400, gelap: 0xFF9F0A)
    static let gagal = Color(terang: 0xFF453A, gelap: 0xFF453A)
}

enum Space {
    static let xs: CGFloat = 4
    static let s: CGFloat = 8
    static let m: CGFloat = 16
    static let l: CGFloat = 24
    static let xl: CGFloat = 32
}

/// Tombol utama selalu kapsul (`.capsule`), bukan radius angka.
enum Radius {
    static let s: CGFloat = 8
    static let m: CGFloat = 14
    static let l: CGFloat = 20
    static let xl: CGFloat = 28
}

enum Ukuran {
    static let tombol: CGFloat = 52
    static let ikon: CGFloat = 36
    static let sentuhMinimal: CGFloat = 44
}

/// Semua teks memakai text style supaya ikut Dynamic Type.
enum Teks {
    static let nominal = Font.system(.largeTitle, design: .rounded).weight(.bold)
    static let judul = Font.title3.weight(.semibold)
    static let isi = Font.body
    static let isiTebal = Font.body.weight(.semibold)
    static let keterangan = Font.subheadline
    static let label = Font.footnote.weight(.semibold)
    static let tombol = Font.headline
}

extension Color {
    init(terang: UInt32, gelap: UInt32) {
        self.init(uiColor: UIColor { trait in
            UIColor(hex: trait.userInterfaceStyle == .dark ? gelap : terang)
        })
    }
}

private extension UIColor {
    convenience init(hex: UInt32) {
        self.init(red: CGFloat((hex >> 16) & 0xFF) / 255,
                  green: CGFloat((hex >> 8) & 0xFF) / 255,
                  blue: CGFloat(hex & 0xFF) / 255,
                  alpha: 1)
    }
}
