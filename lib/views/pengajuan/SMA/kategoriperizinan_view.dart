import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:us_mobile/controllers/pengajuan/kategoriperizinan_controller.dart';
import 'package:us_mobile/widgets/kategori_detail.dart';

class SMAPerizinanView extends StatelessWidget {
  final SMAPerizinanController smaPerizinanController =
      Get.put(SMAPerizinanController());

  @override
  Widget build(BuildContext context) {
    return PerizinanView(
      title: 'Perizinan Sekolah\nMenengah Atas',
      backgroundImage: 'assets/images/Background.png',
      permits: smaPerizinanController.permitssma,
    );
  }
}
