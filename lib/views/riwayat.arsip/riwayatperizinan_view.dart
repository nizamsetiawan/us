import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:us_mobile/constant/colors.dart';
import 'package:us_mobile/controllers/search_controller.dart';
import 'package:us_mobile/models/search_model.dart';
import 'package:us_mobile/routes/app_routes.dart';

class RiwayatPerizinanView extends StatelessWidget {
  final PerizinanController controller = Get.put(PerizinanController());

  @override
  Widget build(BuildContext context) {
    PerizinanCard detailcardriwayat = controller.pengajuanList[0];
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                detailcardriwayat.judul,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                " ID Pengajuan : ${detailcardriwayat.idPengajuan}",
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Text(
                " Status : ${detailcardriwayat.status}",
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.normal,
                ),
              )
            ],
          ),
          Row(
            children: [
              Icon(Icons.date_range, size: 8),
              SizedBox(width: 8.0),
              Text(
                detailcardriwayat.tanggal,
                style: TextStyle(fontSize: 8),
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Icon(Icons.location_on, size: 8),
              SizedBox(width: 8.0),
              Text(
                detailcardriwayat.lokasi,
                style: TextStyle(fontSize: 8),
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Icon(Icons.person, size: 8),
              SizedBox(width: 8.0),
              Text(
                detailcardriwayat.pendaftar,
                style: TextStyle(fontSize: 8),
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          buildExpansionTile('Dokumen', [
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
            // Tambahkan daftar dokumen atau informasi lainnya di sini
          ]),
        ],
      ),
    );
  }

  Widget buildExpansionTile(String label, List<String> items) {
    return ExpansionTile(
      title: Text(
        label,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      children: items.map((item) {
        return ListTile(
          title: Text(item),
          onTap: () {
            // Tambahkan logika ketika item diklik
          },
        );
      }).toList(),
    );
  }
}
