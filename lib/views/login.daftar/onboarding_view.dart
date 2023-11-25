import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:us_mobile/constant/colors.dart';
import 'package:us_mobile/controllers/login.daftar/onboarding_controller.dart';
import 'package:us_mobile/routes/app_routes.dart';
import 'package:us_mobile/widgets/onboarding_widget.dart';

class OnboardingView extends StatelessWidget {
  final controller = Get.put(OnboardingController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.indicator,
            onPageChanged: (value) {
              controller.page.value = value;
              print(controller.page.value);
            },
            children: [
              OnBoardingWidgets(
                image: "onboarding1.png",
                title: "Ajukan Perizinan Sekolah \nDengan Mudah dan Aman!",
                subtitle:
                    "Akses berbagai perizinan sekolah dimanapun \ndan kapanpun dalam satu aplikasi",
              ),
              OnBoardingWidgets(
                image: "onboarding2.png",
                title: "Ketahui dan Lacak Alur \nDokumen dengan Cepat!",
                subtitle:
                    "Scan barcode cepat untuk ketahui posisi \ndokumen perizinan yang diajukan",
              ),
              OnBoardingWidgets(
                image: "onboarding3.png",
                title: "Kelola berbagai Dokumen \ndengan efektif!",
                subtitle:
                    "Dilengkapi fitur lengkap untuk kebutuhan \nmengatur hingga cetak dokumen perizinan ",
              ),
            ],
          ),
          Container(
            alignment: Alignment.topCenter,
            padding: const EdgeInsets.only(top: 60),
            child: Image.asset("assets/images/onboardinglogo.png"),
          ),
          Obx(() => Container(
                alignment: const Alignment(0, 0.60),
                padding: const EdgeInsets.only(top: 600),
                child: Column(
                  children: [
                    if (controller.page.value != 3)
                      SmoothPageIndicator(
                        controller: controller.indicator,
                        count: 3,
                        effect: const SlideEffect(
                          activeDotColor: appbrand500,
                          spacing: 8.0,
                          radius: 4.0,
                          dotHeight: 8,
                          dotWidth: 8,
                          dotColor: appneutral500,
                        ),
                      ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: GestureDetector(
                            onTap: () {
                              Get.offAllNamed(RouteNames.signUp);
                            },
                            child: Container(
                              height: 50,
                              width: Get.width * 0.8,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: appbrand500,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Text(
                                "Daftar Sekarang",
                                style: TextStyle(
                                  color: appwhite,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        GestureDetector(
                          onTap: () {
                            Get.offAllNamed(RouteNames.signIn);
                          },
                          child: Container(
                            height: 50,
                            width: Get.width * 0.8,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              border: Border.all(color: appbrand500),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Text(
                              "Masuk",
                              style: TextStyle(
                                color: appbrand500,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
