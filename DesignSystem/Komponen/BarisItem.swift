import SwiftUI

/// Baris daftar umum: ikon, judul, keterangan, nominal, tanda pilih. Dibaca VoiceOver sebagai satu elemen.
/// `BarisItem(ikon: "bolt", judul: "Tagihan listrik", keterangan: "Jatuh tempo 5 Nov", nominal: 350_000)`
struct BarisItem: View {
    var ikon: String? = nil
    let judul: String
    var keterangan: String? = nil
    var nominal: Int? = nil
    var terpilih: Bool? = nil

    var body: some View {
        HStack(spacing: Space.m) {
            if let ikon {
                Image(systemName: ikon)
                    .font(Teks.isi)
                    .foregroundStyle(Warna.utama)
                    .frame(width: Ukuran.ikon, height: Ukuran.ikon)
                    .background(Warna.latar, in: .rect(cornerRadius: Radius.s))
                    .accessibilityHidden(true)
            }
            VStack(alignment: .leading, spacing: Space.xs) {
                Text(judul).font(Teks.isiTebal).foregroundStyle(Warna.teks)
                if let keterangan {
                    Text(keterangan).font(Teks.keterangan).foregroundStyle(Warna.teksSekunder)
                }
            }
            Spacer(minLength: Space.s)
            if let nominal {
                Text(Rupiah.format(nominal))
                    .font(Teks.isiTebal)
                    .foregroundStyle(Warna.teks)
                    .monospacedDigit()
            }
            if let terpilih {
                Image(systemName: terpilih ? "checkmark.circle.fill" : "circle")
                    .foregroundStyle(terpilih ? Warna.utama : Warna.garis)
                    .accessibilityHidden(true)
            }
        }
        .frame(minHeight: Ukuran.sentuhMinimal)
        .contentShape(.rect)
        .accessibilityElement(children: .combine)
        .accessibilityAddTraits(terpilih == true ? .isSelected : [])
    }
}

/// Wadah kartu putih di atas latar abu.
struct Kartu<Isi: View>: View {
    @ViewBuilder let isi: Isi

    var body: some View {
        VStack(alignment: .leading, spacing: Space.s) {
            isi
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(Space.m)
        .background(Warna.permukaan, in: .rect(cornerRadius: Radius.l))
    }
}

#Preview("Baris") {
    VStack(spacing: Space.m) {
        Kartu {
            BarisItem(ikon: "bolt", judul: "Tagihan listrik", keterangan: "Jatuh tempo 5 Nov", nominal: 350_000)
            BarisItem(ikon: "person", judul: "Budi Contoh", keterangan: "Transfer masuk", nominal: 125_000, terpilih: true)
            BarisItem(judul: "Tanpa ikon", keterangan: "Keterangan singkat", terpilih: false)
        }
    }
    .padding()
    .background(Warna.latar)
}
