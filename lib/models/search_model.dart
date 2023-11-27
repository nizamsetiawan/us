class PerizinanCard {
  final String jenisPerizinan;
  final String judul;
  final String tanggal;
  final String lokasi;
  final String pendaftar;
  final String idPengajuan;
  final String status;
  final String iconPerizinan;
  final String? alamat;
  final String? nb;
  final String? npwp;
  // final String urlPDF;

  PerizinanCard({
    required this.jenisPerizinan,
    required this.judul,
    required this.tanggal,
    required this.lokasi,
    required this.pendaftar,
    required this.idPengajuan,
    required this.status,
    required this.iconPerizinan,
    this.alamat,
    this.nb,
    this.npwp,
    // required this.urlPDF,
  });
}
