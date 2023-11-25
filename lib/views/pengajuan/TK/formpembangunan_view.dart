import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:us_mobile/constant/colors.dart';
import 'package:us_mobile/controllers/pengajuan/formperizinan_controller.dart';
import 'package:us_mobile/controllers/pengajuan/validasiperizinan_controller.dart';
import 'package:us_mobile/routes/app_routes.dart';
import 'package:us_mobile/widgets/button_custom.dart';
import 'package:us_mobile/widgets/inputdata_card.dart';

class TKFormPembangunanView extends StatelessWidget {
  final FormPerizinanController controller = Get.put(FormPerizinanController());
  final ValidasiPerizinanController perizinanController =
      Get.put(ValidasiPerizinanController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbrand500,
        title: const Text("AJUKAN"),
        centerTitle: true,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Get.offAllNamed(RouteNames.bottomNavigation);
          },
          child: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 28),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    "Perizinan Pembangunan TK",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                Container(
                  width: 330,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: appbrand50,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        PermissionWidget(
                          onFilePicked: (title, filePath) {
                            controller.uploadDataToApi(title, filePath);
                          },
                          viewModel: PermissionViewModel(
                            title: "Surat Pengajuan Perizinan",
                            hintText: "hintText",
                            isTextField: false,
                            subTitle: "Format: PDF (Max 1mb)",
                          ),
                        ),
                        PermissionWidget(
                          onFilePicked: (title, filePath) {
                            controller.uploadDataToApi(title, filePath);
                          },
                          viewModel: PermissionViewModel(
                            title:
                                "KTP/Surat Keterangan Domisili\nPenanggung Jawab",
                            hintText: "hintText",
                            isTextField: false,
                            subTitle: "Format: PDF (Max 1mb)",
                          ),
                        ),
                        PermissionWidget(
                          onFilePicked: (title, filePath) {
                            controller.uploadDataToApi(title, filePath);
                          },
                          viewModel: PermissionViewModel(
                            title: "BPJS Kesehatan",
                            hintText: "hintText",
                            isTextField: false,
                            subTitle: "Format: PDF (Max 1mb)",
                          ),
                        ),
                        PermissionWidget(
                          onFilePicked: (title, filePath) {
                            controller.uploadDataToApi(title, filePath);
                          },
                          viewModel: PermissionViewModel(
                            title: "Foto Gambar/Denah Tanah",
                            hintText: "hintText",
                            isTextField: false,
                            subTitle: "Format: PDF (Max 1mb)",
                          ),
                        ),
                        PermissionWidget(
                          onFilePicked: (title, filePath) {
                            controller.uploadDataToApi(title, filePath);
                          },
                          viewModel: PermissionViewModel(
                            title: "Upload Surat Kuasa Pengurusan\nPerizinan",
                            hintText: "hintText",
                            isTextField: false,
                            subTitle: "Format: PDF (Max 1mb)",
                          ),
                        ),
                        PermissionWidget(
                          onFilePicked: (title, filePath) {
                            controller.uploadDataToApi(title, filePath);
                          },
                          viewModel: PermissionViewModel(
                            title: "Riwayat Hidup Penanggung Jawab",
                            hintText: "hintText",
                            isTextField: false,
                            subTitle: "Format: PDF (Max 1mb)",
                          ),
                        ),
                        PermissionWidget(
                          onFilePicked: (title, filePath) {
                            controller.uploadDataToApi(title, filePath);
                          },
                          viewModel: PermissionViewModel(
                            title: "Nomor Induk Berusaha (NIB)",
                            hintText: "Isi Nomor NIB...",
                            isTextField: true,
                            subTitle: "Atas nama lembaga",
                          ),
                        ),
                        PermissionWidget(
                          onFilePicked: (title, filePath) {
                            controller.uploadDataToApi(title, filePath);
                          },
                          viewModel: PermissionViewModel(
                            title: "Nomor Pokok Wajib Pajak (NPWP)",
                            hintText: "Isi Nomor NIB...",
                            isTextField: true,
                            subTitle: "Atas nama lembaga",
                          ),
                        ),
                        PermissionWidget(
                          onFilePicked: (title, filePath) {
                            controller.uploadDataToApi(title, filePath);
                          },
                          viewModel: PermissionViewModel(
                            title: "Hasil Penilaian Kelayakan",
                            hintText: "hintText",
                            isTextField: false,
                            subTitle: "Format: PDF (Max 1mb)",
                          ),
                        ),
                        PermissionWidget(
                          onFilePicked: (title, filePath) {
                            controller.uploadDataToApi(title, filePath);
                          },
                          viewModel: PermissionViewModel(
                            title: "Akta Tanah/Surat Kepemilikan",
                            hintText: "hintText",
                            isTextField: false,
                            subTitle: "Format: PDF (Max 1mb)",
                          ),
                        ),
                        PermissionWidget(
                          onFilePicked: (title, filePath) {
                            controller.uploadDataToApi(title, filePath);
                          },
                          viewModel: PermissionViewModel(
                            title: "Surat Keterangan Izin dari RT/RW\nSetempat",
                            hintText: "hintText",
                            isTextField: false,
                            subTitle: "Format: PDF (Max 1mb)",
                          ),
                        ),
                        PermissionWidget(
                          onFilePicked: (title, filePath) {
                            controller.uploadDataToApi(title, filePath);
                          },
                          viewModel: PermissionViewModel(
                            title:
                                "Data Perkiraan Pembiayaan\nUntuk Kelangsungan Pendidikan",
                            hintText: "hintText",
                            isTextField: false,
                            subTitle: "Format: PDF (Max 1mb)",
                          ),
                        ),
                        PermissionWidget(
                          onFilePicked: (title, filePath) {
                            controller.uploadDataToApi(title, filePath);
                          },
                          viewModel: PermissionViewModel(
                            title: "Program kerja",
                            hintText: "hintText",
                            isTextField: false,
                            subTitle: "Format: PDF (Max 1mb)",
                          ),
                        ),
                        PermissionWidget(
                          onFilePicked: (title, filePath) {
                            controller.uploadDataToApi(title, filePath);
                          },
                          viewModel: PermissionViewModel(
                            title:
                                "Profil Rencana Pengembangan\n(dalam 5 tahun)",
                            hintText: "hintText",
                            isTextField: false,
                            subTitle: "Format: PDF (Max 1mb)",
                          ),
                        ),
                        // Tambahkan PermissionWidget lainnya sesuai kebutuhan
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                GestureDetector(
                  onTap: () => Get.dialog(
                    AlertDialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            20.0), // Menentukan bentuk circular pada sudut dialog
                      ),
                      backgroundColor: appbrand50,
                      title: const Text('Ketentuan & Pernyataan'),
                      titleTextStyle: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: appneutral800,
                      ),
                      content: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize
                            .min, // Added to minimize the dialog size
                        children: [
                          const Text(
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
                          const SizedBox(height: 10),
                          Obx(() => CheckboxListTile(
                                activeColor: appbrand500,
                                title: const Text(
                                  'Saya telah bersedia mengikuti ketentuan yang ada pada pernyataan perizinan ini.',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: appneutral500,
                                  ),
                                ),
                                value: perizinanController.isChecked.value,
                                onChanged: (newValue) {
                                  perizinanController.isChecked.value =
                                      newValue ?? false;
                                },
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                              )),
                          const SizedBox(height: 20),
                          GestureDetector(
                            onTap: () {
                              if (perizinanController.isChecked.value) {
                                AwesomeDialog(
                                    padding: const EdgeInsets.all(15),
                                    context: context,
                                    dialogType: DialogType.success,
                                    animType: AnimType.rightSlide,
                                    title:
                                        'Terima Kasih! Permohonanmu sudah kami terima',
                                    titleTextStyle: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: appbrand500,
                                    ),
                                    desc:
                                        'Pengajuan permohonan pengajuan perizinan telah kami terima dan akan melewati tahapan perizinan. Kamu bisa melihat permohonan mu di menu riwayat dan bisa melacak tiap tahapan perizinan dengan ID Dokumen dan Scan Barcode.',
                                    descTextStyle: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: appneutral600,
                                    ),
                                    btnOkOnPress: () {
                                      Get.offAllNamed(
                                          RouteNames.bottomNavigation);
                                    },
                                    btnOkText: "Selesai")
                                  ..show();
                              } else {
                                Get.snackbar('Perhatian',
                                    'Harap setujui pernyataan perizinan terlebih dahulu',
                                    backgroundColor: appneutral50);
                              }
                            },
                            child: const ButtonWidgets(
                              label: "Ajukan Permohonan Perizinan",
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  child: const ButtonWidgets(
                    label: "Selanjutnya",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
