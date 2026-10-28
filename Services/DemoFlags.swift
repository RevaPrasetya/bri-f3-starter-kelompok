import Foundation

/// Memaksa satu layar ke state tertentu untuk demo, screenshot dan uji.
/// Isi lewat launch argument, misalnya `-demoContoh gagal` (Edit Scheme > Run > Arguments),
/// atau `bash scripts/simulator-demo.sh paksa demoContoh gagal`.
enum KeadaanDemo: String, Sendable {
    case normal
    case memuat
    case kosong
    case gagal
}

/// Tambahkan satu case per layar kalian, misalnya `case riwayat = "demoRiwayat"`.
enum LayarDemo: String, Sendable {
    case contoh = "demoContoh"
}

enum DemoFlags {
    static func keadaan(_ layar: LayarDemo) -> KeadaanDemo {
        guard let nilai = UserDefaults.standard.string(forKey: layar.rawValue) else { return .normal }
        return KeadaanDemo(rawValue: nilai) ?? .normal
    }
}
