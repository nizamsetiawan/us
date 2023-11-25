import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:us_mobile/controllers/pengajuan/kategoriperizinan_controller.dart';
import 'package:us_mobile/widgets/kategori_detail.dart';

class TKperizinanView extends StatelessWidget {
  final TKPerizinanController tkPerizinanController =
      Get.put(TKPerizinanController());

  @override
  Widget build(BuildContext context) {
    return PerizinanView(
      title: 'Perizinan Taman\nKanak - kanak',
      backgroundImage: 'assets/images/Background.png',
      permits: tkPerizinanController.permitstk,
    );
  }
}
