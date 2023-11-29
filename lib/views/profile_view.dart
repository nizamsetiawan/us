import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:us_mobile/constant/colors.dart';
import 'package:us_mobile/controllers/profile_controller.dart';
import 'package:us_mobile/routes/app_routes.dart';
import 'package:us_mobile/widgets/button_custom.dart';

class PengaturanView extends StatelessWidget {
  final ProfileController _profileController = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbrand500,
        title: const Text("PROFILE"),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 180,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/Background.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Center(
                              child: Column(
                                children: [
                                  Container(
                                    width: 80,
                                    height: 80,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        _profileController.userProfile.value
                                            .photoUrl, // Ganti dengan path gambar yang sesuai
                                        fit: BoxFit.cover,
                                        width: double.infinity,
                                        height:
                                            200, // Sesuaikan dengan tinggi yang diinginkan
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    _profileController
                                        .userProfile.value.fullName,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: appwhite,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    _profileController.userProfile.value.role,
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: appwhite,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 30, right: 15, left: 15),
                      child: Container(
                        decoration: BoxDecoration(
                          color: appbrand50,
                          borderRadius: BorderRadius.circular(
                              12), // Sesuaikan dengan radius yang diinginkan
                        ),
                        child: ListTile(
                          leading: Icon(
                            Icons.person_2,
                            color: appbrand500,
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: appneutral800,
                          ),
                          title: Text(
                            'Data Profil',
                            style: TextStyle(
                                color: appbrand800,
                                fontWeight: FontWeight.w500,
                                fontSize: 14),
                          ),
                          onTap: () {
                            Get.toNamed(RouteNames.editprofile);
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20, right: 15, left: 15),
                      child: Container(
                        decoration: BoxDecoration(
                          color: appbrand50,
                          borderRadius: BorderRadius.circular(
                              12), // Sesuaikan dengan radius yang diinginkan
                        ),
                        child: ListTile(
                          leading: Icon(
                            Icons.question_answer,
                            color: appbrand500,
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: appneutral800,
                          ),
                          title: Text(
                            'FAQs',
                            style: TextStyle(
                                color: appbrand800,
                                fontWeight: FontWeight.w500,
                                fontSize: 14),
                          ),
                          onTap: () {
                            Get.toNamed(RouteNames.faq);
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20, right: 15, left: 15),
                      child: Container(
                        decoration: BoxDecoration(
                          color: appbrand50,
                          borderRadius: BorderRadius.circular(
                              12), // Sesuaikan dengan radius yang diinginkan
                        ),
                        child: ListTile(
                          leading: Icon(
                            Icons.data_thresholding_rounded,
                            color: appbrand500,
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: appneutral800,
                          ),
                          title: Text(
                            'Syarat dan Ketentuan',
                            style: TextStyle(
                                color: appbrand800,
                                fontWeight: FontWeight.w500,
                                fontSize: 14),
                          ),
                          onTap: () {
                            Get.toNamed(RouteNames.syaratdanketentuan);
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20, right: 15, left: 15),
                      child: Container(
                        decoration: BoxDecoration(
                          color: appbrand50,
                          borderRadius: BorderRadius.circular(
                              12), // Sesuaikan dengan radius yang diinginkan
                        ),
                        child: ListTile(
                          leading: Icon(
                            Icons.info,
                            color: appbrand500,
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: appneutral800,
                          ),
                          title: Text(
                            'Kontak dan Tentang',
                            style: TextStyle(
                                color: appbrand800,
                                fontWeight: FontWeight.w500,
                                fontSize: 14),
                          ),
                          onTap: () {
                            Get.toNamed(RouteNames.about);
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20, right: 15, left: 15),
                      child: GestureDetector(
                        onTap: () => _showExitConfirmationDialog(),
                        child: ButtonWidgets(
                          label: "Keluar",
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void _showExitConfirmationDialog() {
  AwesomeDialog(
    context: Get.overlayContext!,
    dialogType: DialogType.question,
    title: 'Konfirmasi',
    desc: 'Apakah kamu yakin ingin keluar?',
    btnCancelOnPress: () {
      Get.back();
    },
    btnOkOnPress: () {
      Get.offAllNamed(RouteNames.signIn); // Keluar aplikasi
    },
  )..show();
}
