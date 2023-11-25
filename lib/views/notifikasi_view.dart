import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:us_mobile/constant/colors.dart';
import 'package:us_mobile/controllers/notifikasi_controller.dart';
import 'package:us_mobile/models/notifikasi_model.dart';
import 'package:us_mobile/routes/app_routes.dart';
import 'package:us_mobile/widgets/button_custom.dart';

class NotificationView extends StatelessWidget {
  final NotificationController notificationController =
      Get.put(NotificationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbrand500,
        title: const Text("NOTIFIKASI"),
        centerTitle: true,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Get.offAllNamed(RouteNames.bottomNavigation);
          },
          child: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Obx(
        () => ListView.builder(
          itemCount: notificationController.notifications.length,
          itemBuilder: (context, index) {
            NotificationModel notification =
                notificationController.notifications[index];
            return GestureDetector(
              onTap: () {
                // Tampilkan detail notifikasi saat card diklik
                showNotificationDetail(context, notification);
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: appbrand100,
                            ),
                            child: const Icon(
                              Icons.notifications,
                              color: appbrand500,
                            ),
                          ),
                          SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  notification.title,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: appneutral800),
                                ),
                                Text(
                                  notification.subject,
                                  style: TextStyle(
                                    color: appneutral500,
                                    fontSize: 8,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            notification.date,
                            style: TextStyle(
                              color: appneutral500,
                              fontSize: 8,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Divider(
                      thickness: 1,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                      height: 5), // Jarak antara Divider dan card notifikasi
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  void showNotificationDetail(
      BuildContext context, NotificationModel notification) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: appbrand100,
                      ),
                      child: const Icon(
                        Icons.notifications,
                        color: appbrand500,
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            notification.title,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: appneutral800,
                            ),
                          ),
                          Text(
                            notification.subject,
                            style: TextStyle(
                              color: appneutral500,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                notification.content,
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: ButtonWidgets(
                    label: "Kembali",
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
