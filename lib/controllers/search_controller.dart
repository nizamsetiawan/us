// import 'dart:io';

import 'package:get/get.dart';
import 'package:us_mobile/models/search_model.dart';
// import 'package:path_provider/path_provider.dart';

class PerizinanController extends GetxController {
  var pengajuanList = <PerizinanCard>[
    PerizinanCard(
      jenisPerizinan: "Perizinan SD",
      judul: 'Perizinan Pembangunan Sekolah Dasar',
      iconPerizinan: "assets/icons/sd_result.png",
      tanggal: '13 November 2023',
      lokasi: 'SDN 12 Surabaya',
      pendaftar: 'Regi Muhammar',
      idPengajuan: 'URSBY1234567890',
      status: 'Sedang ditinjau Operator',
    ),
    PerizinanCard(
      jenisPerizinan: "Perizinan TK",
      judul: 'Perizinan Pembangunan Taman Kanak-Kanak',
      iconPerizinan: "assets/icons/tk_result.png",
      tanggal: '14 November 2023',
      lokasi: 'TK 14 Surabaya',
      pendaftar: 'Someone Else',
      idPengajuan: 'URSBY0987654321',
      status: 'Menunggu Persetujuan',
    ),
    PerizinanCard(
      jenisPerizinan: "Perizinan SMP",
      judul: 'Perizinan Pembangunan Sekolah Menengah Pertama',
      iconPerizinan: "assets/icons/smp_result.png",
      tanggal: '14 November 2023',
      lokasi: 'TK 14 Surabaya',
      pendaftar: 'Someone Else',
      idPengajuan: 'URSBY0987651234',
      status: 'Menunggu Persetujuan',
    ),
    // Tambahkan data pengajuan lainnya di sini
  ].obs;

  var filteredPengajuanList = <PerizinanCard>[].obs;

  void filterPengajuan(String query) {
    filteredPengajuanList.assignAll(pengajuanList.where((pengajuan) =>
        pengajuan.idPengajuan.toLowerCase().contains(query.toLowerCase())));
  }

  // Buat variabel untuk menyimpan daftar pengajuan dalam berbagai substatus
  RxList<dynamic> prosesList = [].obs;
  RxList<dynamic> verifikasiList = [].obs;
  RxList<dynamic> surveyList = [].obs;
  // Fungsi untuk mengelompokkan pengajuan berdasarkan status
  void groupPengajuanByStatus() {
    prosesList.clear();
    verifikasiList.clear();
    surveyList.clear();

    for (var pengajuan in pengajuanList) {
      if (pengajuan.idPengajuan == 'URSBY1234567890') {
        prosesList.add(pengajuan);
      } else if (pengajuan.idPengajuan == 'URSBY0987654321') {
        verifikasiList.add(pengajuan);
      } else {
        surveyList.add(pengajuan);
      }
    }
  }
}
