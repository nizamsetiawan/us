import 'package:flutter/material.dart';
import 'package:us_mobile/constant/colors.dart';
import 'package:us_mobile/models/search_model.dart';

class PerizinanCardWidget extends StatelessWidget {
  final PerizinanCard pengajuan;
  final Function()? onTap;

  const PerizinanCardWidget({Key? key, required this.pengajuan, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(8.0),
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          border: Border.all(color: appneutral300),
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset('${pengajuan.iconPerizinan}'),
                SizedBox(width: 10),
                Text(
                  pengajuan.jenisPerizinan,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: appneutral800),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              pengajuan.judul,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Icon(Icons.date_range, size: 8),
                SizedBox(width: 8.0),
                Text(
                  pengajuan.tanggal,
                  style: TextStyle(fontSize: 8),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Icon(Icons.business_outlined, size: 8),
                SizedBox(width: 8.0),
                Text(
                  pengajuan.lokasi,
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
                  pengajuan.pendaftar,
                  style: TextStyle(fontSize: 8),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'ID Pengajuan : ${pengajuan.idPengajuan}',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 8),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    padding: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      color: appwarn400,
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Text(
                      '${pengajuan.status}',
                      style: TextStyle(fontSize: 8, color: appwhite),
                    )),
                ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: GestureDetector(
                      // onTap: () =>
                      //     PerizinanController().downloadFile(pengajuan.ur),
                      child: Container(
                        height: 24,
                        width: 24,
                        color: appbrand500,
                        child: const Icon(
                          size: 12,
                          Icons.download,
                          color: appwhite,
                        ),
                      ),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
