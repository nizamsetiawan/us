import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:us_mobile/constant/colors.dart';
import 'package:us_mobile/controllers/feedback_controller.dart';
import 'package:us_mobile/controllers/search_controller.dart';
import 'package:us_mobile/widgets/button_custom.dart';

class RiwayatPerizinanView extends StatelessWidget {
  final PerizinanController controller = Get.put(PerizinanController());
  final FeedbackController feedbackController = Get.put(FeedbackController());
  @override
  Widget build(BuildContext context) {
    final idPengajuan = Get.arguments as String;
    final detailcardriwayat = controller.pengajuanList
        .firstWhere((pengajuan) => pengajuan.idPengajuan == idPengajuan);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbrand800,
        title: Text("Detail Perizinan"),
        centerTitle: true,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  '${detailcardriwayat.iconPerizinan}',
                ),
                SizedBox(height: 20),
                Text(
                  detailcardriwayat.judul,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: appbrand500,
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  "ID Pengajuan : ${detailcardriwayat.idPengajuan}",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: appbrand800,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Status : ",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: appbrand800,
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    color: appwarn400,
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Center(
                    child: Text(
                      '${detailcardriwayat.status}',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: appwhite,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Divider(
                    color: appneutral200,
                    thickness: 3,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.date_range,
                      size: 12,
                      color: appneutral500,
                    ),
                    SizedBox(width: 8.0),
                    Text(
                      detailcardriwayat.tanggal,
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: appneutral500),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.business_outlined,
                        size: 12, color: appneutral500),
                    SizedBox(width: 8.0),
                    Text(
                      detailcardriwayat.tanggal,
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: appneutral500),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.person, size: 12, color: appneutral500),
                    SizedBox(width: 8.0),
                    Text(
                      detailcardriwayat.pendaftar,
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: appneutral500),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Divider(
                    color: appneutral200,
                    thickness: 3,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "NIB",
                          style: TextStyle(fontSize: 12, color: appneutral500),
                        ),
                        Text(
                          "0123456789012",
                          style: TextStyle(fontSize: 12, color: appneutral500),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "NPWP",
                          style: TextStyle(fontSize: 12, color: appneutral500),
                        ),
                        Text(
                          "012345678901434342",
                          style: TextStyle(fontSize: 12, color: appneutral500),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Divider(
                    color: appneutral200,
                    thickness: 3,
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.location_on, size: 12, color: appneutral500),
                        SizedBox(width: 8),
                        Text(
                          'Alamat Sekolah',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: appneutral800,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(
                        'Jl. Simo Gn. Barat III No.48, Simomulyo, Kec. Sukomanunggal, Surabaya, Jawa Timur 60281',
                        style: TextStyle(fontSize: 12, color: appneutral500)),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Divider(
                    color: appneutral200,
                    thickness: 3,
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.business_outlined,
                            size: 12, color: appneutral500),
                        SizedBox(width: 8),
                        Text(
                          'Dokumen Pengajuan Perizinan',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: appneutral800,
                          ),
                        ),
                      ],
                    ),
                    buildDocumentSection(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            style: ButtonStyle(
                                elevation: MaterialStatePropertyAll(0),
                                backgroundColor:
                                    MaterialStatePropertyAll(appneutral200)),
                            onPressed: () {
                              _showFeedbackModal(context);
                            },
                            child: Text(
                              'Feedback',
                              style: TextStyle(color: appneutral800),
                            ),
                          ),
                        ),
                      ],
                    ),
                    ButtonWidgets(
                      label: "Download Pengajuan",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildDocumentSection() {
    // Daftar dokumen yang ingin ditampilkan
    List<String> documents = [
      'Surat Pengajuan Perizinan',
      'KTP/Surat Keterangan Domisili Penanggung Jawab',
      'BPJS Ketenagakerjaan',
      'BPJS Kesehatan',
      'Foto Gambar/Denah Tanah',
      'Surat Kuasa Pengurusan Perizinan',
      'Riwayat Hidup Penanggung Jawab',
      'Hasil Penilaian Kelayakan',
      'Akta Tanah/Surat Kepemilikan',
      'Surat Keterangan Izin dari RT/RW atau Setempat',
      'Data mengenai Perkiraan Pembiayaan Untuk Kelangsungan Pendidikan',
      'Program Kerja',
      'Profil Rencana Pengembangan (dalam 5 tahun)',
    ];

    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: documents.length,
      itemBuilder: (BuildContext context, int index) {
        return buildDocumentItem(documents[index]);
      },
    );
  }

  Widget buildDocumentItem(String documentName) {
    return ListTile(
      title: Text(
        documentName,
        style: TextStyle(fontSize: 12, color: appneutral800),
      ),
      trailing: GestureDetector(
        onTap: () {
          // Handle action when "Lihat" is tapped for this document
          // For example, navigate to a new page or show a dialog
        },
        child: Text(
          'Lihat',
          style: TextStyle(
            fontSize: 11,
            color: appbrand2_600,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  void _showFeedbackModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
      ),
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Beri tahu kami feedbackmu',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: appneutral800,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Ceritakan saran dan feedbackmu disini',
                  style: TextStyle(
                    fontSize: 12,
                    color: appneutral500,
                  ),
                ),
                SizedBox(height: 16),
                TextFormField(
                  autocorrect: false,
                  style: TextStyle(fontSize: 12, color: appneutral500),
                  onChanged: feedbackController.setName,
                  decoration: InputDecoration(
                    labelText: 'Nama',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: appneutral500), // Warna ketika non-aktif
                      borderRadius: BorderRadius.circular(9),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: appneutral500), // Warna ketika aktif
                      borderRadius: BorderRadius.circular(9),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                TextFormField(
                  autocorrect: false,
                  style: TextStyle(fontSize: 12, color: appneutral500),
                  onChanged: feedbackController.setEmail,
                  decoration: InputDecoration(
                    labelText: 'Alamat Email',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: appneutral500), // Warna ketika non-aktif
                      borderRadius: BorderRadius.circular(9),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: appneutral500), // Warna ketika aktif
                      borderRadius: BorderRadius.circular(9),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                TextFormField(
                  autocorrect: false,
                  style: TextStyle(fontSize: 12, color: appneutral500),
                  onChanged: feedbackController.setPhoneNumber,
                  decoration: InputDecoration(
                    labelText: 'Nomer HP',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: appneutral500), // Warna ketika non-aktif
                      borderRadius: BorderRadius.circular(9),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: appneutral500), // Warna ketika aktif
                      borderRadius: BorderRadius.circular(9),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                TextFormField(
                  autocorrect: false,
                  style: TextStyle(fontSize: 12, color: appneutral500),
                  onChanged: feedbackController.message,
                  decoration: InputDecoration(
                    labelText: 'Isi Feedback',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: appneutral500), // Warna ketika non-aktif
                      borderRadius: BorderRadius.circular(9),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: appneutral500), // Warna ketika aktif
                      borderRadius: BorderRadius.circular(9),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                GestureDetector(
                  onTap: () async {
                    try {
                      await feedbackController.submitFeedback();
                    } catch (e) {
                      print('Error: $e');
                    }
                  },
                  child: ButtonWidgets(
                    label: "Kirim Feedback",
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
