import 'package:flutter/material.dart';
import 'package:us_mobile/constant/colors.dart';
import 'package:us_mobile/models/pengajuan/detailperizinan_model.dart';

class DetailCardPerizinan extends StatelessWidget {
  final DetailPerizinan detailcardperizinan;
  const DetailCardPerizinan({
    Key? key,
    required this.detailcardperizinan,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  detailcardperizinan.jenisPerizinan,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  detailcardperizinan.subJenisPerizinan,
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.normal,
                  ),
                )
              ],
            ),
            Image.asset(
                "assets/icons/detailcardtk.png"), // Sesuaikan path gambar
          ],
        ),
        SizedBox(height: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Deskripsi Perizinan",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: appneutral800,
              ),
            ),
            SizedBox(height: 8),
            Text(
              detailcardperizinan.subDeskripsiPerizinan,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: appneutral500,
              ),
            ),
            SizedBox(height: 12),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Legalitas Perizinan",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: appneutral800,
              ),
            ),
            SizedBox(height: 8),
            Text(
              detailcardperizinan.subLegalitasPerizinan,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: appneutral500,
              ),
            ),
            SizedBox(height: 12),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Persyaratan Pemohon",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: appneutral800,
              ),
            ),
            SizedBox(height: 8),
            Text(
              detailcardperizinan.subPersyaratanPemohon.join('\n'),
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: appneutral500,
              ),
            ),
            SizedBox(height: 12),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Container(
                height: 40,
                width: 40,
                color: appbrand100,
                child: Icon(
                  Icons.sort,
                  color: appbrand500,
                ),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Alur Perizinan",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: appneutral800,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    detailcardperizinan.subAlurPerizinan,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: appneutral500,
                    ),
                  ),
                  Divider(
                    color: appneutral500,
                    thickness: 1,
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Container(
                height: 40,
                width: 40,
                color: appbrand100,
                child: Icon(
                  Icons.timer,
                  color: appbrand500,
                ),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Waktu Proses Kerja",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: appneutral800,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    detailcardperizinan.subProsesWaktuKerja,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: appneutral500,
                    ),
                  ),
                  Divider(
                    color: appneutral500,
                    thickness: 1,
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Container(
                height: 40,
                width: 40,
                color: appbrand100,
                child: Icon(
                  Icons.folder,
                  color: appbrand500,
                ),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Jumlah Persyaratan",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: appneutral800,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    detailcardperizinan.jumlahPersyaratan,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: appneutral500,
                    ),
                  ),
                  Divider(
                    color: appneutral500,
                    thickness: 1,
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Container(
                height: 40,
                width: 40,
                color: appbrand100,
                child: Icon(
                  Icons.download,
                  color: appbrand500,
                ),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Template Pengajuan Perizinan",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: appneutral800,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Unduh",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: appneutral500,
                    ),
                  ),
                  Divider(
                    color: appneutral500,
                    thickness: 1,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
