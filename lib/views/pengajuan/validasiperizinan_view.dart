import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:us_mobile/constant/colors.dart';
import 'package:us_mobile/controllers/pengajuan/validasiperizinan_controller.dart';
import 'package:us_mobile/routes/app_routes.dart';
import 'package:us_mobile/widgets/button_custom.dart';

class ValidasiPerizinanView extends StatelessWidget {
  final ValidasiPerizinanController perizinanController =
      Get.put(ValidasiPerizinanController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbrand500,
        title: Text("AJUKAN PERIZINAN"),
        centerTitle: true,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Get.offAllNamed(RouteNames.formpembangunantk);
          },
          child: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              _buildPerizinanForm(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPerizinanForm() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: appbrand50),
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ketentuan & Pernyataan',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: appneutral800,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Menyatakan\n\n'
                '1. Bersedia mengikuti seluruh proses pengajuan perizinan dari awal sampai selesai.\n\n'
                '2. Bersedia memenuhi persyaratan administratif serta syarat dan ketentuan yang berlaku.\n\n'
                '3. Bersedia menaati segala ketentuan dan tata tertib yang telah ditentukan.\n\n'
                '4. Mengerti dan setuju bahwa aplikasi ini hanya digunakan untuk kebutuhan pengajuan administratif pengajuan di bidang pendidikan.\n\n'
                '5. Bersedia memberikan informasi pribadi yang tercantum dalam form pendaftaran.\n\n'
                '6. Setuju dan mengerti apabila dokumen pengajuan yang diajukan tidak sesuai sehingga pengajuan akan ditolak.',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: appneutral500,
                ),
              ),
              SizedBox(height: 10),
              Obx(() => CheckboxListTile(
                    activeColor: appbrand500,
                    title: Text(
                      'Saya telah bersedia mengikuti ketentuan yang ada pada pernyataan perizinan ini.',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: appneutral500,
                      ),
                    ),
                    value: perizinanController.isChecked.value,
                    onChanged: (newValue) {
                      perizinanController.isChecked.value = newValue ?? false;
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  )),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  if (perizinanController.isChecked.value) {
                  } else {
                    Get.snackbar('Perhatian',
                        'Harap setujui pernyataan perizinan terlebih dahulu',
                        backgroundColor: appneutral50);
                  }
                },
                child: ButtonWidgets(
                  label: "Ajukan Permohonan Perizinan",
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
