import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:us_mobile/controllers/pengajuan/kategoriperizinan_controller.dart';
import 'package:us_mobile/widgets/kategori_detail.dart';

class SDPerizinanView extends StatelessWidget {
  final SDPerizinanController sdPerizinanController =
      Get.put(SDPerizinanController());

  @override
  Widget build(BuildContext context) {
    return PerizinanView(
      title: 'Perizinan Sekolah\nDasar',
      backgroundImage: 'assets/images/Background.png',
      permits: sdPerizinanController.permitssd,
    );
  }
}
