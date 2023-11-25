import 'package:flutter/material.dart';
import 'package:us_mobile/models/search_model.dart';

class DetailRiwayatCard extends StatelessWidget {
  final PerizinanCard detailcardriwayat;
  const DetailRiwayatCard({
    Key? key,
    required this.detailcardriwayat,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
