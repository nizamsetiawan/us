import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:us_mobile/constant/colors.dart';
import 'package:us_mobile/routes/app_routes.dart';

class SplashscreenView extends GetView {
  const SplashscreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), (() {
      Get.offAllNamed(RouteNames.onboarding);
    }));
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/splashlogo.png",
                width: 400, height: 400),
            SpinKitFoldingCube(
              color: appbrand200,
              size: 50.0,
            ),
          ],
        ),
      ),
    );
  }
}
