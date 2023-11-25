import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:us_mobile/controllers/pengajuan/kategoriperizinan_controller.dart';
import 'package:us_mobile/widgets/kategori_detail.dart';

class SMPPerizinanView extends StatelessWidget {
  final SMPPerizinanController smpPerizinanController =
      Get.put(SMPPerizinanController());

  @override
  Widget build(BuildContext context) {
    return PerizinanView(
      title: 'Perizinan Sekolah\nMenengah Pertama',
      backgroundImage: 'assets/images/Background.png',
      permits: smpPerizinanController.permitssmp,
    );
  }
}
