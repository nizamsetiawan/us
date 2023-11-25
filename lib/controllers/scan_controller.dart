import 'package:get/get.dart';
import 'package:qrscan/qrscan.dart' as scanner;

class ScanController extends GetxController {
  RxString scanResult = RxString("");

  Future<void> scanQR() async {
    String? barcode = await scanner.scan();
    if (barcode != null) {
      scanResult.value = barcode;
      print('Hasil pemindaian QR code: $barcode');
    } else {
      print('Pemindaian QR code dibatalkan atau hasil tidak valid');
    }
  }
}
