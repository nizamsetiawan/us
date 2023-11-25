// Model untuk detail perizinan
class DetailPerizinan {
  final String subJenisPerizinan;
  final String iconPerizinan;
  final String jenisPerizinan;
  final String subDeskripsiPerizinan;
  final String subLegalitasPerizinan;
  final List<String> subPersyaratanPemohon;
  final String subAlurPerizinan;
  final String subProsesWaktuKerja;
  final String link;
  final String jumlahPersyaratan;

  DetailPerizinan({
    required this.subJenisPerizinan,
    required this.iconPerizinan,
    required this.jenisPerizinan,
    required this.subDeskripsiPerizinan,
    required this.subLegalitasPerizinan,
    required this.subPersyaratanPemohon,
    required this.subAlurPerizinan,
    required this.subProsesWaktuKerja,
    required this.link,
    required this.jumlahPersyaratan,
  });
}

// Model untuk tiap subkategori dan tingkatan
class SubkategoriDetail {
  final List<DetailPerizinan> sdDetails; // SD
  final List<DetailPerizinan> smpDetails; // SMP
  final List<DetailPerizinan> tkDetails; // TK
  final List<DetailPerizinan> smaDetails; // TK

  SubkategoriDetail({
    required this.sdDetails,
    required this.smpDetails,
    required this.tkDetails,
    required this.smaDetails,
  });
}

// Model untuk tingkat SD
class SDDetailPerizinan extends DetailPerizinan {
  SDDetailPerizinan({
    required String subJenisPerizinan,
    required String iconPerizinan,
    required String jenisPerizinan,
    required String subDeskripsiPerizinan,
    required String subLegalitasPerizinan,
    required List<String> subPersyaratanPemohon,
    required String subAlurPerizinan,
    required String subProsesWaktuKerja,
    required String link,
    required String jumlahPersyaratan,
  }) : super(
          subJenisPerizinan: subJenisPerizinan,
          iconPerizinan: iconPerizinan,
          jenisPerizinan: jenisPerizinan,
          subDeskripsiPerizinan: subDeskripsiPerizinan,
          subLegalitasPerizinan: subLegalitasPerizinan,
          subPersyaratanPemohon: subPersyaratanPemohon,
          subAlurPerizinan: subAlurPerizinan,
          subProsesWaktuKerja: subProsesWaktuKerja,
          link: link,
          jumlahPersyaratan: jumlahPersyaratan,
        );
}

// Model untuk tingkat SMP
class SMPDetailPerizinan extends DetailPerizinan {
  SMPDetailPerizinan({
    required String subJenisPerizinan,
    required String iconPerizinan,
    required String jenisPerizinan,
    required String subDeskripsiPerizinan,
    required String subLegalitasPerizinan,
    required List<String> subPersyaratanPemohon,
    required String subAlurPerizinan,
    required String subProsesWaktuKerja,
    required String link,
    required String jumlahPersyaratan,
  }) : super(
          subJenisPerizinan: subJenisPerizinan,
          iconPerizinan: iconPerizinan,
          jenisPerizinan: jenisPerizinan,
          subDeskripsiPerizinan: subDeskripsiPerizinan,
          subLegalitasPerizinan: subLegalitasPerizinan,
          subPersyaratanPemohon: subPersyaratanPemohon,
          subAlurPerizinan: subAlurPerizinan,
          subProsesWaktuKerja: subProsesWaktuKerja,
          link: link,
          jumlahPersyaratan: jumlahPersyaratan,
        );
}

// Model untuk tingkat TK
class TKDetailPerizinan extends DetailPerizinan {
  TKDetailPerizinan({
    required String subJenisPerizinan,
    required String iconPerizinan,
    required String jenisPerizinan,
    required String subDeskripsiPerizinan,
    required String subLegalitasPerizinan,
    required List<String> subPersyaratanPemohon,
    required String subAlurPerizinan,
    required String subProsesWaktuKerja,
    required String link,
    required String jumlahPersyaratan,
  }) : super(
          subJenisPerizinan: subJenisPerizinan,
          iconPerizinan: iconPerizinan,
          jenisPerizinan: jenisPerizinan,
          subDeskripsiPerizinan: subDeskripsiPerizinan,
          subLegalitasPerizinan: subLegalitasPerizinan,
          subPersyaratanPemohon: subPersyaratanPemohon,
          subAlurPerizinan: subAlurPerizinan,
          subProsesWaktuKerja: subProsesWaktuKerja,
          link: link,
          jumlahPersyaratan: jumlahPersyaratan,
        );
}

// Model untuk tingkat SMA
class SMADetailPerizinan extends DetailPerizinan {
  SMADetailPerizinan({
    required String subJenisPerizinan,
    required String iconPerizinan,
    required String jenisPerizinan,
    required String subDeskripsiPerizinan,
    required String subLegalitasPerizinan,
    required List<String> subPersyaratanPemohon,
    required String subAlurPerizinan,
    required String subProsesWaktuKerja,
    required String link,
    required String jumlahPersyaratan,
  }) : super(
          subJenisPerizinan: subJenisPerizinan,
          iconPerizinan: iconPerizinan,
          jenisPerizinan: jenisPerizinan,
          subDeskripsiPerizinan: subDeskripsiPerizinan,
          subLegalitasPerizinan: subLegalitasPerizinan,
          subPersyaratanPemohon: subPersyaratanPemohon,
          subAlurPerizinan: subAlurPerizinan,
          subProsesWaktuKerja: subProsesWaktuKerja,
          link: link,
          jumlahPersyaratan: jumlahPersyaratan,
        );
}

// Model untuk menyimpan semua subkategori dan tingkatan
class DetailModel {
  final SubkategoriDetail pembangunan;
  final SubkategoriDetail operasional;
  final SubkategoriDetail perubahanOperasional;

  DetailModel({
    required this.pembangunan,
    required this.operasional,
    required this.perubahanOperasional,
  });
}
