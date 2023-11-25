import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:us_mobile/constant/colors.dart';
import 'package:us_mobile/routes/app_routes.dart';
import 'package:us_mobile/widgets/activity_card.dart';
import 'package:us_mobile/widgets/buttoncard_custom.dart';
import 'package:us_mobile/widgets/kategori_card.dart';

class BerandaView extends StatelessWidget {
  const BerandaView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(height: 250, child: _head()),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(top: 32, left: 32, right: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Aktivitas",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: appneutral500),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CardActivity(
                          statuspengajuan: 'Pengajuan',
                          iconPath: 'assets/icons/collection.png',
                          jumlahpengajuan: '1 Pengajuan',
                        ),
                        CardActivity(
                          jumlahpengajuan: '1 Pengajuan',
                          iconPath: 'assets/icons/check-circle.png',
                          statuspengajuan: 'Diterima',
                        ),
                        CardActivity(
                          jumlahpengajuan: '1 Pengajuan',
                          iconPath: 'assets/icons/x-circle.png',
                          statuspengajuan: 'Ditolak',
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  const Text(
                    "Lacak Permohonan Anda",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 8),
                  GestureDetector(
                    onTap: () => Get.offAllNamed(RouteNames.search),
                    child: Container(
                      width: 240,
                      height: 36,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: appneutral400)),
                      child: const Padding(
                        padding: EdgeInsets.all(8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [Text("ID Pengajuan"), Icon(Icons.search)],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Kategori Perizinan",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Get.offAllNamed(
                                      RouteNames.kategoriprizinantk);
                                },
                                child: KategoriPerizinan(
                                  label: 'Perizinan TK',
                                  iconPath: 'assets/icons/tk.png',
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Get.offAllNamed(
                                      RouteNames.kategoriprizinansd);
                                },
                                child: KategoriPerizinan(
                                  label: 'Perizinan SD',
                                  iconPath: 'assets/icons/sd.png',
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () => Get.offAllNamed(
                                    RouteNames.kategoriprizinansmp),
                                child: KategoriPerizinan(
                                  label: 'Perizinan SMP',
                                  iconPath: 'assets/icons/smp.png',
                                ),
                              ),
                              GestureDetector(
                                onTap: () => Get.offAllNamed(
                                    RouteNames.kategoriprizinansma),
                                child: KategoriPerizinan(
                                  label: 'Perizinan SMA',
                                  iconPath: 'assets/icons/sma.png',
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      )),
    );
  }

//widget head ajukan perizinan
  Widget _head() {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              height: 218,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/topberanda.png"),
                    fit: BoxFit.cover),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 23,
                    left: 300,
                    child: GestureDetector(
                      onTap: () => Get.offAllNamed(RouteNames.notification),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Container(
                            height: 40,
                            width: 40,
                            color: appbrand100,
                            child: const Icon(
                              Icons.notifications,
                              color: appbrand500,
                            ),
                          )),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 30, left: 36),
                    child: Text(
                      "Hai Nizam!",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Positioned(
          top: 120,
          left: 25,
          child: Container(
            height: 128,
            width: 328,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.4),
                  blurRadius: 25,
                  spreadRadius: -5,
                  offset: const Offset(0, 9), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Nikmati Kemudahan\nPerizinan Sekolah",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        const SizedBox(height: 4),
                        GestureDetector(
                          onTap: () {
                            Get.offAllNamed(RouteNames.daftarperizinan);
                          },
                          child: const ButtonWidgetsCard(
                            label: 'Ajukan Perizinan',
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/pengajuan1.png"),
                            fit: BoxFit.cover),
                      ),
                      width: 100,
                      height: 100,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
