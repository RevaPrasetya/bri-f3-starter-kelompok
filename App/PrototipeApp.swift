import SwiftUI

@main
struct PrototipeApp: App {
    @State private var navigasi = Navigasi()
    /// Data dummy secara default. Supabase hanya kalau diaktifkan di Config/ (docs/supabase-opsional.md).
    private let layanan = SumberData.layanan()

    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $navigasi.path) {
                // Ganti dengan layar pertama dari docs/userflow.md.
                ContohView(model: ContohModel(layanan: layanan, navigasi: navigasi))
                    .navigationDestination(for: Rute.self) { rute in
                        tujuan(rute)
                    }
            }
            .tint(Warna.utama)
        }
    }

    /// Satu `case` per layar di docs/userflow.md.
    @ViewBuilder
    private func tujuan(_ rute: Rute) -> some View {
        switch rute {
        case .detailContoh(let item):
            BelumDibangun(layar: item.judul, task: "task berikutnya")
        }
    }
}
