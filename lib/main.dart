import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:us_mobile/constant/colors.dart';
import 'package:us_mobile/routes/app_page.dart';
import 'package:us_mobile/routes/app_routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  OneSignal.Debug.setLogLevel(OSLogLevel.verbose);
  OneSignal.initialize("78f36c43-942f-46e4-a155-aab7ecfdf1cc");
  OneSignal.Notifications.addPermissionObserver((state) {
    print("Has permission " + state.toString());
  });
  runApp(
    GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            textTheme:
                GoogleFonts.poppinsTextTheme().apply(bodyColor: appbrand500),
            scaffoldBackgroundColor: appwhite,
            primaryColor: appbrand500),
        title: "Application",
        initialRoute: RouteNames.splashScreen,
        getPages: AppPage.pages),
  );
}
