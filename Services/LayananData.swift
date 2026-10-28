/// Semua data yang dibutuhkan layar. Model layar hanya mengenal protokol ini, jadi sumbernya
/// (dummy atau Supabase) bisa diganti tanpa menyentuh view. Sumber yang aktif dipilih di `SumberData`.
///
/// Layar baru butuh data baru? Tambah satu fungsi di sini, lalu isi di `LayananDummy`
/// (wajib, dipakai preview dan test) dan di `LayananSupabase` (kalau kelompok memakai Supabase).
protocol LayananData: Sendable {
    func daftarContoh() async throws -> [ItemContoh]
}

enum GalatLayanan: Error {
    case koneksiTerputus
    /// Supabase menjawab dengan kode HTTP selain 2xx (misalnya 401 kunci salah, 404 tabel tidak ada).
    case server(kode: Int)
}
