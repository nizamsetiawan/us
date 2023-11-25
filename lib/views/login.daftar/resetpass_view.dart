import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:us_mobile/constant/colors.dart';
import 'package:us_mobile/routes/app_routes.dart';
import 'package:us_mobile/widgets/button_custom.dart';

class ForgetpwView extends StatelessWidget {
  const ForgetpwView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.offAllNamed(RouteNames.onboarding);
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    color: appneutral600,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  "Reset Kata Sandi",
                  style: TextStyle(
                      color: appneutral600,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          elevation: 0,
          centerTitle: false,
          backgroundColor: appwhite,
        ),
        body: ListView(
          children: [
            const SizedBox(height: 10),
            Container(
              height: 221,
              width: 221,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/forgetpw.png"))),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Hai Scholars, Silahkan masukkan email yang kamu gunakan saat mendaftar. Link reset kata sandi akan dikirimkan melalui Email. \n\nJangan bagikan Link kamu kepada siapapun!',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: appneutral600),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Email",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        border: Border.all(color: appneutral400)),
                    child: const TextField(
                      autocorrect: false,
                      style: TextStyle(fontSize: 12, color: appneutral900),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.fromLTRB(16, 0, 16, 10),
                          hintText: "Masukkan Alamat Email"),
                    ),
                  ),
                  const SizedBox(height: 15),
                  GestureDetector(
                    onTap: () {
                      Get.offAllNamed(RouteNames.newPass);
                    },
                    child: const ButtonWidgets(
                      label: 'Kirim Link Reset',
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
