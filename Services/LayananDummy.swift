import Foundation

/// Pengganti backend, dan sumber data default. Ada jeda buatan supaya state "memuat" terlihat.
/// Tidak ada API asli, tidak ada kunci API, tidak ada data nasabah.
struct LayananDummy: LayananData {
    var jeda: Duration = .milliseconds(600)
    /// Test memakai `false` supaya argument `-demo…` di scheme tidak memengaruhi hasil test.
    var ikutiDemoFlags = true

    func daftarContoh() async throws -> [ItemContoh] {
        switch try await tunggu(.contoh) {
        case .kosong: return []
        default: return DataContoh.item
        }
    }

    private func tunggu(_ layar: LayarDemo) async throws -> KeadaanDemo {
        let keadaan = ikutiDemoFlags ? DemoFlags.keadaan(layar) : .normal
        switch keadaan {
        case .memuat:
            try await Task.sleep(for: .seconds(3600))
        case .gagal:
            try await Task.sleep(for: jeda)
            throw GalatLayanan.koneksiTerputus
        case .normal, .kosong:
            try await Task.sleep(for: jeda)
        }
        return keadaan
    }
}
