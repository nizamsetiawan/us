import 'package:get/get.dart';
import 'package:us_mobile/views/chat_view.dart';
import 'package:us_mobile/views/home_view.dart';
import 'package:us_mobile/views/profile_view.dart';
import 'package:us_mobile/views/riwayat_view.dart';
import 'package:us_mobile/views/scan_view.dart';

class BottomnavigationController extends GetxController {
  RxInt CurrentIndex = 0.obs;

  final screens = [
    const BerandaView(),
    RiwayatView(),
    ScanView(),
    const ObrolanView(),
    const PengaturanView(),
  ];

  SetIndex(index) {
    print(index);
    CurrentIndex.value = index;
    update();
  }
}
