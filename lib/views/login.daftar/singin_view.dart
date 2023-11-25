import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:us_mobile/constant/colors.dart';
import 'package:us_mobile/controllers/login.daftar/singin_controller.dart';
import 'package:us_mobile/routes/app_routes.dart';
import 'package:us_mobile/widgets/button_custom.dart';

class SinginView extends StatelessWidget {
  final controller = Get.put(SinginController());
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
                  child: const Icon(Icons.arrow_back, color: appneutral600)),
              const SizedBox(
                width: 20,
              ),
              const Text(
                'Masuk',
                style: TextStyle(
                    color: appneutral600,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        centerTitle: false,
        elevation: 0,
        backgroundColor: appwhite,
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          const Center(
              child: Text(
            "Segera Kembali ke US!",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          )),
          const SizedBox(height: 20),
          Container(
            height: 221,
            width: 221,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/signin.png"))),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Email atau NIK",
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
                        hintText: "Masukkan Alamat Email atau NIK.."),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Kata Sandi",
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
                  child: Obx(() => TextField(
                        autocorrect: false,
                        obscureText: controller.isPasswordHidden.value,
                        style:
                            const TextStyle(fontSize: 12, color: appneutral900),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding:
                              const EdgeInsets.fromLTRB(16, 7, 16, 10),
                          hintText: "Masukkan Kata Sandi",
                          suffixIcon: IconButton(
                            icon: Icon(controller.isPasswordHidden.value
                                ? Icons.visibility
                                : Icons.visibility_off),
                            color: appneutral400,
                            onPressed: () {
                              controller.isPasswordHidden.value =
                                  !controller.isPasswordHidden.value;
                            },
                          ),
                          suffixIconConstraints: const BoxConstraints(
                            minWidth: 0,
                            minHeight: 0,
                          ),
                        ),
                      )),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.offAllNamed(RouteNames.resetpass);
                      },
                      child: const Text(
                        "Lupa Kata Sandi?",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w600),
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                GestureDetector(
                  onTap: () {
                    Get.offAllNamed(RouteNames.bottomNavigation);
                  },
                  child: const ButtonWidgets(label: 'Masuk'),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Belum punya akun?",
                      style: TextStyle(
                        color: appneutral600,
                        fontSize: 14,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.offAllNamed(RouteNames.signUp);
                      },
                      child: const Text(
                        "Daftar Sekarang",
                        style: TextStyle(
                            color: appbrand500,
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
