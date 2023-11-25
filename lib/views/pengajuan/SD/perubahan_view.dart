import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:us_mobile/constant/colors.dart';
import 'package:us_mobile/controllers/pengajuan/detailperizinan_controller.dart';
import 'package:us_mobile/routes/app_routes.dart';
import 'package:us_mobile/widgets/button_custom.dart';
import 'package:us_mobile/widgets/perizinan_detail.dart';

class perubahanSDView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String>? args =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>?;

    // Handling nullability and assigning default values if null
    final perizinan =
        args?['perizinan'] ?? ''; // Providing default empty string if null
    final subperizinan =
        args?['subperizinan'] ?? ''; // Providing default empty string if null

    return GetBuilder<DetailcardperizinanController>(
      init: DetailcardperizinanController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: appbrand500,
            title: const Text("INFORMASI PERIZINAN"),
            centerTitle: true,
            elevation: 0,
            leading: GestureDetector(
              onTap: () {
                Get.offAllNamed(RouteNames.bottomNavigation);
              },
              child: const Icon(Icons.arrow_back_ios_new),
            ),
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  for (var permit
                      in controller.getDetailByType(perizinan, subperizinan))
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 35, vertical: 16),
                      child: DetailCardPerizinan(
                        detailcardperizinan: permit,
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: GestureDetector(
                      onTap: () {
                        Get.offAllNamed(RouteNames.formperubahansd);
                      },
                      child: ButtonWidgets(
                        label: "Ajukan Perizinan Ini",
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
