import 'package:get/get.dart';
import 'package:us_mobile/models/profile_model.dart';

class ProfileController extends GetxController {
  var userProfile = UserProfile(
    fullName: 'Regi Muhammar',
    photoUrl: 'assets/images/photoprofile.png',
    role: "Pemohon",
  ).obs;
}
