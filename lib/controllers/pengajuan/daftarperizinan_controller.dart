import 'package:get/get.dart';
import 'package:us_mobile/models/pengajuan/daftarperizinan_model.dart';
import 'package:us_mobile/routes/app_routes.dart';

class ListperizinanController extends GetxController {
  var permits = <CardPerizinan>[
    TKCardPerizinan(
      title: 'Perizinan Pembangunan TK',
      requirements: '13 Syarat Dokumen',
      processingTime: '30 Hari Kerja',
      onTap: () {
        Get.offAllNamed(RouteNames.pembangunantk, arguments: {
          'perizinan': 'TK', // Mengirim informasi kategori
          'subperizinan': 'Pembangunan' // Mengirim informasi subkategori
        });
      },
      bannerimage: "assets/icons/tkbanner.png",
    ),
    TKCardPerizinan(
      title: 'Perizinan Operasional TK',
      requirements: '15 Syarat Dokumen',
      processingTime: '45 Hari Kerja',
      onTap: () {
        Get.offAllNamed(RouteNames.operasionaltk, arguments: {
          'perizinan': 'TK', // Mengirim informasi kategori
          'subperizinan': 'Operasional' // Mengirim informasi subkategori
        });
      },
      bannerimage: "assets/icons/tkbanner.png",
    ),
    TKCardPerizinan(
      title: 'Perizinan Perubahan Operasional TK',
      requirements: '15 Syarat Dokumen',
      processingTime: '45 Hari Kerja',
      onTap: () {
        Get.offAllNamed(RouteNames.perubahantk, arguments: {
          'perizinan': 'TK', // Mengirim informasi kategori
          'subperizinan': 'Perubahan' // Mengirim informasi subkategori
        });
      },
      bannerimage: "assets/icons/tkbanner.png",
    ),
    SDCardPerizinan(
      title: 'Perizinan Pembangunan SD',
      requirements: '15 Syarat Dokumen',
      processingTime: '35 Hari Kerja',
      onTap: () {
        Get.offAllNamed(RouteNames.pembangunansd, arguments: {
          'perizinan': 'SD', // Mengirim informasi kategori
          'subperizinan': 'Pembangunan' // Mengirim informasi subkategori
        });
      },
      bannerimage: "assets/icons/tkbanner.png",
    ),
    SDCardPerizinan(
      title: 'Perizinan Operasional SD',
      requirements: '15 Syarat Dokumen',
      processingTime: '35 Hari Kerja',
      onTap: () {
        Get.offAllNamed(RouteNames.operasionalsd, arguments: {
          'perizinan': 'SD', // Mengirim informasi kategori
          'subperizinan': 'Operasional' // Mengirim informasi subkategori
        });
      },
      bannerimage: "assets/icons/tkbanner.png",
    ),
    SDCardPerizinan(
      title: 'Perizinan Perubahan Operasional SD',
      requirements: '15 Syarat Dokumen',
      processingTime: '45 Hari Kerja',
      onTap: () {
        Get.offAllNamed(RouteNames.perubahansd, arguments: {
          'perizinan': 'SD', // Mengirim informasi kategori
          'subperizinan': 'Perubahan' // Mengirim informasi subkategori
        });
      },
      bannerimage: "assets/icons/tkbanner.png",
    ),
    SMPCardPerizinan(
      title: 'Perizinan Pembangunan SMP',
      requirements: '18 Syarat Dokumen',
      processingTime: '40 Hari Kerja',
      onTap: () {
        Get.offAllNamed(RouteNames.pembangunansmp, arguments: {
          'perizinan': 'SMP', // Mengirim informasi kategori
          'subperizinan': 'Pembangunan' // Mengirim informasi subkategori
        });
      },
      bannerimage: "assets/icons/tkbanner.png",
    ),
    SMPCardPerizinan(
      title: 'Perizinan Operasional SMP',
      requirements: '18 Syarat Dokumen',
      processingTime: '40 Hari Kerja',
      onTap: () {
        Get.offAllNamed(RouteNames.operasionalsmp, arguments: {
          'perizinan': 'SMP', // Mengirim informasi kategori
          'subperizinan': 'Operasional' // Mengirim informasi subkategori
        });
      },
      bannerimage: "assets/icons/tkbanner.png",
    ),
    SMPCardPerizinan(
      title: 'Perizinan Perubahan Operasional SMP',
      requirements: '15 Syarat Dokumen',
      processingTime: '45 Hari Kerja',
      onTap: () {
        Get.offAllNamed(RouteNames.perubahansmp, arguments: {
          'perizinan': 'SMP', // Mengirim informasi kategori
          'subperizinan': 'Perubahan' // Mengirim informasi subkategori
        });
      },
      bannerimage: "assets/icons/tkbanner.png",
    ),
    SMACardPerizinan(
      title: 'Perizinan Pembangunan SMA',
      requirements: '18 Syarat Dokumen',
      processingTime: '40 Hari Kerja',
      onTap: () {
        Get.offAllNamed(RouteNames.pembangunansma, arguments: {
          'perizinan': 'SMA', // Mengirim informasi kategori
          'subperizinan': 'Pembangunan' // Mengirim informasi subkategori
        });
      },
      bannerimage: "assets/icons/tkbanner.png",
    ),
    SMACardPerizinan(
      title: 'Perizinan Operasional SMA',
      requirements: '18 Syarat Dokumen',
      processingTime: '40 Hari Kerja',
      onTap: () {
        Get.offAllNamed(RouteNames.operasionalsma, arguments: {
          'perizinan': 'SMA', // Mengirim informasi kategori
          'subperizinan': 'Operasional' // Mengirim informasi subkategori
        });
      },
      bannerimage: "assets/icons/tkbanner.png",
    ),
    SMACardPerizinan(
      title: 'Perizinan Perubahan Operasional SMA',
      requirements: '15 Syarat Dokumen',
      processingTime: '45 Hari Kerja',
      onTap: () {
        Get.offAllNamed(RouteNames.perubahansma, arguments: {
          'perizinan': 'SMA', // Mengirim informasi kategori
          'subperizinan': 'Perubahan' // Mengirim informasi subkategori
        });
      },
      bannerimage: "assets/icons/tkbanner.png",
    ),
  ].obs;
}
