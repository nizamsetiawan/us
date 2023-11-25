import 'package:get/get.dart';
import 'package:us_mobile/routes/app_routes.dart';
import 'package:us_mobile/views/bottomnavbar.dart';
import 'package:us_mobile/views/chat_view.dart';
import 'package:us_mobile/views/home_view.dart';
import 'package:us_mobile/views/login.daftar/newpass_view.dart';
import 'package:us_mobile/views/login.daftar/onboarding_view.dart';
import 'package:us_mobile/views/login.daftar/resetpass_view.dart';
import 'package:us_mobile/views/login.daftar/singin_view.dart';
import 'package:us_mobile/views/login.daftar/singup_view.dart';
import 'package:us_mobile/views/login.daftar/splashscreen.dart';
import 'package:us_mobile/views/notifikasi_view.dart';
import 'package:us_mobile/views/pengajuan/SD/formoperasional_view.dart';
import 'package:us_mobile/views/pengajuan/SD/formpembangunan_view.dart';
import 'package:us_mobile/views/pengajuan/SD/formperubahan_view.dart';
import 'package:us_mobile/views/pengajuan/SD/kategoriperizinan_view.dart';
import 'package:us_mobile/views/pengajuan/SD/operasional_view.dart';
import 'package:us_mobile/views/pengajuan/SD/pembangunan_view.dart';
import 'package:us_mobile/views/pengajuan/SD/perubahan_view.dart';
import 'package:us_mobile/views/pengajuan/SMA/formoperasional_view.dart';
import 'package:us_mobile/views/pengajuan/SMA/formpembangunan_view.dart';
import 'package:us_mobile/views/pengajuan/SMA/formperubahan_view.dart';
import 'package:us_mobile/views/pengajuan/SMA/kategoriperizinan_view.dart';
import 'package:us_mobile/views/pengajuan/SMA/operasional_view.dart';
import 'package:us_mobile/views/pengajuan/SMA/pembangunan_view.dart';
import 'package:us_mobile/views/pengajuan/SMA/perubahan_view.dart';
import 'package:us_mobile/views/pengajuan/SMP/formoperasional_view.dart';
import 'package:us_mobile/views/pengajuan/SMP/formpembangunan_view.dart';
import 'package:us_mobile/views/pengajuan/SMP/formperubahan_view.dart';
import 'package:us_mobile/views/pengajuan/SMP/kategoriperizinan_view.dart';
import 'package:us_mobile/views/pengajuan/SMP/pembangunan_view.dart';
import 'package:us_mobile/views/pengajuan/TK/formoperasional_view.dart';
import 'package:us_mobile/views/pengajuan/TK/formpembangunan_view.dart';
import 'package:us_mobile/views/pengajuan/TK/formperubahan_view.dart';
import 'package:us_mobile/views/pengajuan/TK/kategoriperizinan_view.dart';
import 'package:us_mobile/views/pengajuan/TK/pembangunan_view.dart';
import 'package:us_mobile/views/pengajuan/TK/perubahan_view.dart';
import 'package:us_mobile/views/pengajuan/daftarperizinan_view.dart';
import 'package:us_mobile/views/profile_view.dart';
import 'package:us_mobile/views/riwayat.arsip/riwayatperizinan_view.dart';
import 'package:us_mobile/views/riwayat_view.dart';
import 'package:us_mobile/views/scan_view.dart';
import 'package:us_mobile/views/search_view.dart';

class AppPage {
  static final pages = [
    GetPage(
      name: RouteNames.splashScreen,
      page: () => const SplashscreenView(),
    ),
    GetPage(
      name: RouteNames.onboarding,
      page: () => OnboardingView(),
    ),
    GetPage(
      name: RouteNames.signIn,
      page: () => SinginView(),
    ),
    GetPage(
      name: RouteNames.signUp,
      page: () => SingupView(),
    ),
    GetPage(
      name: RouteNames.newPass,
      page: () => NewpassView(),
    ),
    GetPage(
      name: RouteNames.resetpass,
      page: () => const ForgetpwView(),
    ),
    GetPage(
      name: RouteNames.bottomNavigation,
      page: () => BottomnavigationView(),
    ),
    GetPage(
      name: RouteNames.home,
      page: () => const BerandaView(),
    ),
    GetPage(
      name: RouteNames.riwayat,
      page: () => RiwayatView(),
    ),
    GetPage(
      name: RouteNames.scan,
      page: () => ScanView(),
    ),
    GetPage(
      name: RouteNames.chat,
      page: () => const ObrolanView(),
    ),
    GetPage(
      name: RouteNames.profile,
      page: () => const PengaturanView(),
    ),
    GetPage(
      name: RouteNames.daftarperizinan,
      page: () => ListperizinanView(),
    ),
    GetPage(
      name: RouteNames.kategoriprizinantk,
      page: () => TKperizinanView(),
    ),
    GetPage(
      name: RouteNames.kategoriprizinansd,
      page: () => SDPerizinanView(),
    ),
    GetPage(
      name: RouteNames.kategoriprizinansmp,
      page: () => SMPPerizinanView(),
    ),
    GetPage(
      name: RouteNames.kategoriprizinansma,
      page: () => SMAPerizinanView(),
    ),
    GetPage(
      name: RouteNames.perubahantk,
      page: () => PerubahanTkView(),
    ),
    GetPage(
      name: RouteNames.pembangunantk,
      page: () => PembangunanTkView(),
    ),
    GetPage(
      name: RouteNames.operasionaltk,
      page: () => PembangunanTkView(),
    ),
    GetPage(
      name: RouteNames.perubahansd,
      page: () => perubahanSDView(),
    ),
    GetPage(
      name: RouteNames.pembangunansd,
      page: () => PembangunanSDView(),
    ),
    GetPage(
      name: RouteNames.operasionalsd,
      page: () => OperasionalSDView(),
    ),
    GetPage(
      name: RouteNames.perubahansmp,
      page: () => PerubahanTkView(),
    ),
    GetPage(
      name: RouteNames.pembangunansmp,
      page: () => PembangunanSMPView(),
    ),
    GetPage(
      name: RouteNames.operasionalsmp,
      page: () => PembangunanSMPView(),
    ),
    GetPage(
      name: RouteNames.perubahansma,
      page: () => perubahanSMAView(),
    ),
    GetPage(
      name: RouteNames.pembangunansma,
      page: () => pembangunanSMAView(),
    ),
    GetPage(
      name: RouteNames.operasionalsma,
      page: () => OperasionalSMAView(),
    ),
    GetPage(
      name: RouteNames.formpembangunantk,
      page: () => TKFormPembangunanView(),
    ),
    GetPage(
      name: RouteNames.formoperasionaltk,
      page: () => TKFormOperasionalView(),
    ),
    GetPage(
      name: RouteNames.formperubahantk,
      page: () => TKFormPerubahanView(),
    ),
    GetPage(
      name: RouteNames.formpembangunansd,
      page: () => SDFormPembangunanView(),
    ),
    GetPage(
      name: RouteNames.formoperasionalsd,
      page: () => SDFormOperasionalView(),
    ),
    GetPage(
      name: RouteNames.formperubahansd,
      page: () => SDFormPerubahanView(),
    ),
    GetPage(
      name: RouteNames.formpembangunansmp,
      page: () => SMPFormPembangunanView(),
    ),
    GetPage(
      name: RouteNames.formoperasionalsmp,
      page: () => SMPFormOperasionalView(),
    ),
    GetPage(
      name: RouteNames.formperubahansmp,
      page: () => SMPFormPerubahanView(),
    ),
    GetPage(
      name: RouteNames.formpembangunansma,
      page: () => SMAFormPembangunanView(),
    ),
    GetPage(
      name: RouteNames.formoperasionalsma,
      page: () => SMAFormOperasionalView(),
    ),
    GetPage(
      name: RouteNames.formperubahansma,
      page: () => SMAFormPerubahanView(),
    ),
    GetPage(
      name: RouteNames.notification,
      page: () => NotificationView(),
    ),
    GetPage(
      name: RouteNames.search,
      page: () => SearchResultsView(),
    ),
    GetPage(
      name: RouteNames.riwayatperizinan,
      page: () => RiwayatPerizinanView(),
    ),
  ];
}
