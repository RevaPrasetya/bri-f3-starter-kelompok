import Observation

/// Langkah-langkah di docs/userflow.md. Data yang dibutuhkan layar berikutnya dibawa di sini.
enum Rute: Hashable {
    case detailContoh(ItemContoh)
}

@MainActor
@Observable
final class Navigasi {
    var path: [Rute] = []

    func buka(_ rute: Rute) {
        path.append(rute)
    }

    func kembaliKeAwal() {
        path.removeAll()
    }
}
