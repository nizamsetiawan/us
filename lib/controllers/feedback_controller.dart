import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:us_mobile/constant/colors.dart';
import 'package:us_mobile/routes/app_routes.dart';

class FeedbackController extends GetxController {
  final name = ''.obs;
  final email = ''.obs;
  final phoneNumber = ''.obs;
  final message = ''.obs;

  void setName(String value) => name.value = value;
  void setEmail(String value) => email.value = value;
  void setPhoneNumber(String value) => phoneNumber.value = value;
  void setMessage(String value) => message.value = value;

  Future<void> submitFeedback() async {
    final url = 'https://api.example.com/feedback'; // Ganti dengan URL API Anda
    final feedback = {
      'name': name.value,
      'email': email.value,
      'phoneNumber': phoneNumber.value,
      'message': message.value,
    };

    try {
      final response = await http.post(
        Uri.parse(url),
        body: feedback,
      );

      if (response.statusCode == 200) {
        // Feedback terkirim
        print('Feedback terkirim!');
        Get.snackbar('Feedback Terkirim', 'Terima kasih atas feedback Anda!',
            backgroundColor: appneutral50);
        Get.offAllNamed(RouteNames.bottomNavigation);
      } else {
        // Gagal mengirim feedback
        print('Gagal mengirim feedback. Status code: ${response.statusCode}');
        throw Exception('Gagal mengirim feedback');
      }
    } catch (e) {
      print('Error: $e');
      Get.snackbar('Error', 'Gagal mengirim feedback. Silakan coba lagi nanti.',
          backgroundColor: appneutral50);
      Get.offAllNamed(RouteNames.bottomNavigation);
    }
  }
}
