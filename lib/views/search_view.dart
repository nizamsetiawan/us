import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:us_mobile/constant/colors.dart';
import 'package:us_mobile/controllers/search_controller.dart';
import 'package:us_mobile/routes/app_routes.dart';
import 'package:us_mobile/widgets/resultperizinan_card.dart'; // Sesuaikan dengan nama file controller Anda

class SearchResultsView extends StatelessWidget {
  final PerizinanController controller = Get.put(PerizinanController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbrand500,
        title: const Text("LACAK PERMOHONAN"),
        centerTitle: true,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Get.offAllNamed(RouteNames.bottomNavigation);
          },
          child: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  border: Border.all(color: appneutral400)),
              child: TextField(
                onChanged: (value) {
                  // Filter berdasarkan nilai input
                  controller.filterPengajuan(value);
                },
                autocorrect: false,
                style: TextStyle(fontSize: 12, color: appneutral900),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.fromLTRB(16, 0, 16, 10),
                    hintText: "ID Pengajuan..."),
              ),
            ),
          ),
          Expanded(
            child: Obx(() {
              final filteredList = controller.filteredPengajuanList;
              return ListView.builder(
                itemCount: filteredList.length,
                itemBuilder: (context, index) {
                  final pengajuan = filteredList[index];
                  return PerizinanCardWidget(
                    pengajuan: pengajuan,
                  );
                },
              );
            }),
          ),
        ],
      ),
    );
  }
}
