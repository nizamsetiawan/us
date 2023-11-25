class CardPerizinan {
  final String title;
  final String requirements;
  final String processingTime;
  final void Function()? onTap; // Properti fungsi onTap
  final String bannerimage;

  CardPerizinan({
    required this.title,
    required this.requirements,
    required this.processingTime,
    this.onTap, // Inisialisasi onTap
    required this.bannerimage,
  });
}

class TKCardPerizinan extends CardPerizinan {
  TKCardPerizinan({
    required String title,
    required String requirements,
    required String processingTime,
    void Function()? onTap, // Properti fungsi onTap
    required String bannerimage,
  }) : super(
            title: title,
            requirements: requirements,
            processingTime: processingTime,
            onTap: onTap, // Inisialisasi onTap
            bannerimage: bannerimage);
}

class SDCardPerizinan extends CardPerizinan {
  SDCardPerizinan({
    required String title,
    required String requirements,
    required String processingTime,
    void Function()? onTap, // Properti fungsi onTap
    required String bannerimage,
  }) : super(
            title: title,
            requirements: requirements,
            processingTime: processingTime,
            onTap: onTap, // Inisialisasi onTap
            bannerimage: bannerimage);
}

class SMPCardPerizinan extends CardPerizinan {
  SMPCardPerizinan({
    required String title,
    required String requirements,
    required String processingTime,
    void Function()? onTap, // Properti fungsi onTap
    required String bannerimage,
  }) : super(
            title: title,
            requirements: requirements,
            processingTime: processingTime,
            onTap: onTap, // Inisialisasi onTap
            bannerimage: bannerimage);
}

class SMACardPerizinan extends CardPerizinan {
  SMACardPerizinan({
    required String title,
    required String requirements,
    required String processingTime,
    void Function()? onTap, // Properti fungsi onTap
    required String bannerimage,
  }) : super(
            title: title,
            requirements: requirements,
            processingTime: processingTime,
            onTap: onTap, // Inisialisasi onTap
            bannerimage: bannerimage);
}
