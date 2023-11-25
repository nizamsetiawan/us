import 'package:flutter/material.dart';
import 'package:us_mobile/constant/colors.dart';

class CardActivity extends StatelessWidget {
  final String? statuspengajuan;
  final String? jumlahpengajuan;
  final String? iconPath;

  const CardActivity({
    this.statuspengajuan,
    this.jumlahpengajuan,
    this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 85,
      height: 85,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: appneutral300)),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          "${statuspengajuan}",
          style: TextStyle(fontSize: 10, color: appneutral500),
        ),
        SizedBox(
          height: 5,
        ),
        Image.asset(
          '${iconPath}',
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "${jumlahpengajuan}",
          style: TextStyle(
              fontSize: 10, fontWeight: FontWeight.bold, color: appneutral800),
        )
      ]),
    );
  }
}
