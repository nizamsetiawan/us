import 'package:get/get.dart';
import 'package:us_mobile/models/pengajuan/detailperizinan_model.dart';

class DetailcardperizinanController extends GetxController {
  // Model untuk formulir pengajuan perizinan untuk setiap tingkatan dan subkategori
  var detailModel = DetailModel(
    // Subkategori dan tingkatan pembangunan
    pembangunan: SubkategoriDetail(
      sdDetails: [
        // Data untuk SD
        SDDetailPerizinan(
          subJenisPerizinan:
              "Informasi perizinan terkait pembangunan fasilitas\nuntuk taman kanak-kanak",
          iconPerizinan: "iconperizinan",
          jenisPerizinan: "Perizinan Pembangunan SD",
          subDeskripsiPerizinan:
              "Pelatihan Strategi Strategi Pendanaan merupakan pelatihan bagi pelaku Usaha Mikro, Kecil, dan Menengah (UMKM) dalam rangka mempersiapkan Sumber Daya Manusia yang unggul di era revolusi industri 4.0. . Modul pembelajaran dalam kelas Strategi Pendanaan telah dirancang khusus untuk memenuhi kebutuhan pelaku UMKM terkait optimasi keuangan usaha melalui kanal digital dan strategi dalam mendapatkan pendanaan usaha. Di dalam kelas, peserta akan mendapatkan materi dalam bentuk teori, serta contoh aplikasinya dalam usaha. Lebih lanjut, peserta juga akan diberikan informasi terkait dengan berbagai solusi bisnis ekosistem Gojek untuk pelaku UMKM.",
          subLegalitasPerizinan:
              "Semua keabsahan perizinan melalui platform Urban Scholaria telah resmi disetujui dan mendapat pengakuan oleh pemerintah setempat. ",
          subPersyaratanPemohon: [
            "1. Pemohon harus merupakan Warga Negara Indonesia dan dapat membuktikannya dengan menyertakan Kartu Tanda Penduduk (KTP) atau Kartu Keluarga (KK).",
            "2. Pemohon minimal berusia 18 tahun pada saat mengajukan permohonan.",
          ],
          subAlurPerizinan:
              "mengisi persyaratan - verifikasi administrasi - verifikasi dokumen - survey lokasi - verifikasi hasil survey - penerbitan surat legalitas",
          subProsesWaktuKerja: "30 hari",
          link: "link",
          jumlahPersyaratan: "13 Syarat Dokumen",
        ),
      ],
      smpDetails: [
        // Data untuk SMP
        SMPDetailPerizinan(
          subJenisPerizinan:
              "Informasi perizinan terkait pembangunan fasilitas\nuntuk taman kanak-kanak",
          iconPerizinan: "iconperizinan",
          jenisPerizinan: "Perizinan Pembangunan SMP",
          subDeskripsiPerizinan:
              "Pelatihan Strategi Strategi Pendanaan merupakan pelatihan bagi pelaku Usaha Mikro, Kecil, dan Menengah (UMKM) dalam rangka mempersiapkan Sumber Daya Manusia yang unggul di era revolusi industri 4.0. . Modul pembelajaran dalam kelas Strategi Pendanaan telah dirancang khusus untuk memenuhi kebutuhan pelaku UMKM terkait optimasi keuangan usaha melalui kanal digital dan strategi dalam mendapatkan pendanaan usaha. Di dalam kelas, peserta akan mendapatkan materi dalam bentuk teori, serta contoh aplikasinya dalam usaha. Lebih lanjut, peserta juga akan diberikan informasi terkait dengan berbagai solusi bisnis ekosistem Gojek untuk pelaku UMKM.",
          subLegalitasPerizinan:
              "Semua keabsahan perizinan melalui platform Urban Scholaria telah resmi disetujui dan mendapat pengakuan oleh pemerintah setempat. ",
          subPersyaratanPemohon: [
            "1. Pemohon harus merupakan Warga Negara Indonesia dan dapat membuktikannya dengan menyertakan Kartu Tanda Penduduk (KTP) atau Kartu Keluarga (KK).",
            "2. Pemohon minimal berusia 18 tahun pada saat mengajukan permohonan.",
          ],
          subAlurPerizinan:
              "mengisi persyaratan - verifikasi administrasi - verifikasi dokumen - survey lokasi - verifikasi hasil survey - penerbitan surat legalitas",
          subProsesWaktuKerja: "30 hari",
          link: "link",
          jumlahPersyaratan: "13 Syarat Dokumen",
        ),
      ],
      tkDetails: [
        // Data untuk TK
        TKDetailPerizinan(
          subJenisPerizinan:
              "Informasi perizinan terkait pembangunan fasilitas\nuntuk taman kanak-kanak",
          iconPerizinan: "iconperizinan",
          jenisPerizinan: "Perizinan Pembangunan TK",
          subDeskripsiPerizinan:
              "Pelatihan Strategi Strategi Pendanaan merupakan pelatihan bagi pelaku Usaha Mikro, Kecil, dan Menengah (UMKM) dalam rangka mempersiapkan Sumber Daya Manusia yang unggul di era revolusi industri 4.0. . Modul pembelajaran dalam kelas Strategi Pendanaan telah dirancang khusus untuk memenuhi kebutuhan pelaku UMKM terkait optimasi keuangan usaha melalui kanal digital dan strategi dalam mendapatkan pendanaan usaha. Di dalam kelas, peserta akan mendapatkan materi dalam bentuk teori, serta contoh aplikasinya dalam usaha. Lebih lanjut, peserta juga akan diberikan informasi terkait dengan berbagai solusi bisnis ekosistem Gojek untuk pelaku UMKM.",
          subLegalitasPerizinan:
              "Semua keabsahan perizinan melalui platform Urban Scholaria telah resmi disetujui dan mendapat pengakuan oleh pemerintah setempat. ",
          subPersyaratanPemohon: [
            "1. Pemohon harus merupakan Warga Negara Indonesia dan dapat membuktikannya dengan menyertakan Kartu Tanda Penduduk (KTP) atau Kartu Keluarga (KK).",
            "2. Pemohon minimal berusia 18 tahun pada saat mengajukan permohonan.",
          ],
          subAlurPerizinan:
              "mengisi persyaratan - verifikasi administrasi - verifikasi dokumen - survey lokasi - verifikasi hasil survey - penerbitan surat legalitas",
          subProsesWaktuKerja: "30 hari",
          link: "link",
          jumlahPersyaratan: "13 Syarat Dokumen",
        ),
      ],
      smaDetails: [
        // Data untuk TK
        SMADetailPerizinan(
          subJenisPerizinan:
              "Informasi perizinan terkait pembangunan fasilitas\nuntuk taman kanak-kanak",
          iconPerizinan: "iconperizinan",
          jenisPerizinan: "Perizinan Pembangunan SMA",
          subDeskripsiPerizinan:
              "Pelatihan Strategi Strategi Pendanaan merupakan pelatihan bagi pelaku Usaha Mikro, Kecil, dan Menengah (UMKM) dalam rangka mempersiapkan Sumber Daya Manusia yang unggul di era revolusi industri 4.0. . Modul pembelajaran dalam kelas Strategi Pendanaan telah dirancang khusus untuk memenuhi kebutuhan pelaku UMKM terkait optimasi keuangan usaha melalui kanal digital dan strategi dalam mendapatkan pendanaan usaha. Di dalam kelas, peserta akan mendapatkan materi dalam bentuk teori, serta contoh aplikasinya dalam usaha. Lebih lanjut, peserta juga akan diberikan informasi terkait dengan berbagai solusi bisnis ekosistem Gojek untuk pelaku UMKM.",
          subLegalitasPerizinan:
              "Semua keabsahan perizinan melalui platform Urban Scholaria telah resmi disetujui dan mendapat pengakuan oleh pemerintah setempat. ",
          subPersyaratanPemohon: [
            "1. Pemohon harus merupakan Warga Negara Indonesia dan dapat membuktikannya dengan menyertakan Kartu Tanda Penduduk (KTP) atau Kartu Keluarga (KK).",
            "2. Pemohon minimal berusia 18 tahun pada saat mengajukan permohonan.",
          ],
          subAlurPerizinan:
              "mengisi persyaratan - verifikasi administrasi - verifikasi dokumen - survey lokasi - verifikasi hasil survey - penerbitan surat legalitas",
          subProsesWaktuKerja: "30 hari",
          link: "link",
          jumlahPersyaratan: "13 Syarat Dokumen",
        ),
      ],
    ),
    // Subkategori dan tingkatan operasional
    operasional: SubkategoriDetail(
      // ...isi data untuk operasional
      sdDetails: [
        // Data untuk SD
        SDDetailPerizinan(
          subJenisPerizinan:
              "Informasi perizinan terkait operasional fasilitas\nuntuk taman kanak-kanak",
          iconPerizinan: "iconperizinan",
          jenisPerizinan: "Perizinan operasional SD",
          subDeskripsiPerizinan:
              "Pelatihan Strategi Strategi Pendanaan merupakan pelatihan bagi pelaku Usaha Mikro, Kecil, dan Menengah (UMKM) dalam rangka mempersiapkan Sumber Daya Manusia yang unggul di era revolusi industri 4.0. . Modul pembelajaran dalam kelas Strategi Pendanaan telah dirancang khusus untuk memenuhi kebutuhan pelaku UMKM terkait optimasi keuangan usaha melalui kanal digital dan strategi dalam mendapatkan pendanaan usaha. Di dalam kelas, peserta akan mendapatkan materi dalam bentuk teori, serta contoh aplikasinya dalam usaha. Lebih lanjut, peserta juga akan diberikan informasi terkait dengan berbagai solusi bisnis ekosistem Gojek untuk pelaku UMKM.",
          subLegalitasPerizinan:
              "Semua keabsahan perizinan melalui platform Urban Scholaria telah resmi disetujui dan mendapat pengakuan oleh pemerintah setempat. ",
          subPersyaratanPemohon: [
            "1. Pemohon harus merupakan Warga Negara Indonesia dan dapat membuktikannya dengan menyertakan Kartu Tanda Penduduk (KTP) atau Kartu Keluarga (KK).",
            "2. Pemohon minimal berusia 18 tahun pada saat mengajukan permohonan.",
          ],
          subAlurPerizinan:
              "mengisi persyaratan - verifikasi administrasi - verifikasi dokumen - survey lokasi - verifikasi hasil survey - penerbitan surat legalitas",
          subProsesWaktuKerja: "30 hari",
          link: "link",
          jumlahPersyaratan: "13 Syarat Dokumen",
        ),
      ],
      smpDetails: [
        // Data untuk TK
        SMPDetailPerizinan(
          subJenisPerizinan:
              "Informasi perizinan terkait operasional fasilitas\nuntuk taman kanak-kanak",
          iconPerizinan: "iconperizinan",
          jenisPerizinan: "Perizinan operasional SMP",
          subDeskripsiPerizinan:
              "Pelatihan Strategi Strategi Pendanaan merupakan pelatihan bagi pelaku Usaha Mikro, Kecil, dan Menengah (UMKM) dalam rangka mempersiapkan Sumber Daya Manusia yang unggul di era revolusi industri 4.0. . Modul pembelajaran dalam kelas Strategi Pendanaan telah dirancang khusus untuk memenuhi kebutuhan pelaku UMKM terkait optimasi keuangan usaha melalui kanal digital dan strategi dalam mendapatkan pendanaan usaha. Di dalam kelas, peserta akan mendapatkan materi dalam bentuk teori, serta contoh aplikasinya dalam usaha. Lebih lanjut, peserta juga akan diberikan informasi terkait dengan berbagai solusi bisnis ekosistem Gojek untuk pelaku UMKM.",
          subLegalitasPerizinan:
              "Semua keabsahan perizinan melalui platform Urban Scholaria telah resmi disetujui dan mendapat pengakuan oleh pemerintah setempat. ",
          subPersyaratanPemohon: [
            "1. Pemohon harus merupakan Warga Negara Indonesia dan dapat membuktikannya dengan menyertakan Kartu Tanda Penduduk (KTP) atau Kartu Keluarga (KK).",
            "2. Pemohon minimal berusia 18 tahun pada saat mengajukan permohonan.",
          ],
          subAlurPerizinan:
              "mengisi persyaratan - verifikasi administrasi - verifikasi dokumen - survey lokasi - verifikasi hasil survey - penerbitan surat legalitas",
          subProsesWaktuKerja: "30 hari",
          link: "link",
          jumlahPersyaratan: "13 Syarat Dokumen",
        ),
      ],
      tkDetails: [
        // Data untuk TK
        TKDetailPerizinan(
          subJenisPerizinan:
              "Informasi perizinan terkait operasional fasilitas\nuntuk taman kanak-kanak",
          iconPerizinan: "iconperizinan",
          jenisPerizinan: "Perizinan operasional TK",
          subDeskripsiPerizinan:
              "Pelatihan Strategi Strategi Pendanaan merupakan pelatihan bagi pelaku Usaha Mikro, Kecil, dan Menengah (UMKM) dalam rangka mempersiapkan Sumber Daya Manusia yang unggul di era revolusi industri 4.0. . Modul pembelajaran dalam kelas Strategi Pendanaan telah dirancang khusus untuk memenuhi kebutuhan pelaku UMKM terkait optimasi keuangan usaha melalui kanal digital dan strategi dalam mendapatkan pendanaan usaha. Di dalam kelas, peserta akan mendapatkan materi dalam bentuk teori, serta contoh aplikasinya dalam usaha. Lebih lanjut, peserta juga akan diberikan informasi terkait dengan berbagai solusi bisnis ekosistem Gojek untuk pelaku UMKM.",
          subLegalitasPerizinan:
              "Semua keabsahan perizinan melalui platform Urban Scholaria telah resmi disetujui dan mendapat pengakuan oleh pemerintah setempat. ",
          subPersyaratanPemohon: [
            "1. Pemohon harus merupakan Warga Negara Indonesia dan dapat membuktikannya dengan menyertakan Kartu Tanda Penduduk (KTP) atau Kartu Keluarga (KK).",
            "2. Pemohon minimal berusia 18 tahun pada saat mengajukan permohonan.",
          ],
          subAlurPerizinan:
              "mengisi persyaratan - verifikasi administrasi - verifikasi dokumen - survey lokasi - verifikasi hasil survey - penerbitan surat legalitas",
          subProsesWaktuKerja: "30 hari",
          link: "link",
          jumlahPersyaratan: "13 Syarat Dokumen",
        ),
      ],
      smaDetails: [
        // Data untuk TK
        SMADetailPerizinan(
          subJenisPerizinan:
              "Informasi perizinan terkait operasional fasilitas\nuntuk taman kanak-kanak",
          iconPerizinan: "iconperizinan",
          jenisPerizinan: "Perizinan operasional SMA",
          subDeskripsiPerizinan:
              "Pelatihan Strategi Strategi Pendanaan merupakan pelatihan bagi pelaku Usaha Mikro, Kecil, dan Menengah (UMKM) dalam rangka mempersiapkan Sumber Daya Manusia yang unggul di era revolusi industri 4.0. . Modul pembelajaran dalam kelas Strategi Pendanaan telah dirancang khusus untuk memenuhi kebutuhan pelaku UMKM terkait optimasi keuangan usaha melalui kanal digital dan strategi dalam mendapatkan pendanaan usaha. Di dalam kelas, peserta akan mendapatkan materi dalam bentuk teori, serta contoh aplikasinya dalam usaha. Lebih lanjut, peserta juga akan diberikan informasi terkait dengan berbagai solusi bisnis ekosistem Gojek untuk pelaku UMKM.",
          subLegalitasPerizinan:
              "Semua keabsahan perizinan melalui platform Urban Scholaria telah resmi disetujui dan mendapat pengakuan oleh pemerintah setempat. ",
          subPersyaratanPemohon: [
            "1. Pemohon harus merupakan Warga Negara Indonesia dan dapat membuktikannya dengan menyertakan Kartu Tanda Penduduk (KTP) atau Kartu Keluarga (KK).",
            "2. Pemohon minimal berusia 18 tahun pada saat mengajukan permohonan.",
          ],
          subAlurPerizinan:
              "mengisi persyaratan - verifikasi administrasi - verifikasi dokumen - survey lokasi - verifikasi hasil survey - penerbitan surat legalitas",
          subProsesWaktuKerja: "30 hari",
          link: "link",
          jumlahPersyaratan: "13 Syarat Dokumen",
        ),
      ],
    ),
    // Subkategori dan tingkatan perubahan operasional
    perubahanOperasional: SubkategoriDetail(
      // ...isi data untuk perubahan operasional
      sdDetails: [
        // Data untuk SD
        SDDetailPerizinan(
          subJenisPerizinan:
              "Informasi perizinan terkait perubahan operasional\nfasilitas untuk Sekolah Dasar",
          iconPerizinan: "iconperizinan",
          jenisPerizinan: "Perizinan perubahan\noperasional SD",
          subDeskripsiPerizinan:
              "Pelatihan Strategi Strategi Pendanaan merupakan pelatihan bagi pelaku Usaha Mikro, Kecil, dan Menengah (UMKM) dalam rangka mempersiapkan Sumber Daya Manusia yang unggul di era revolusi industri 4.0. . Modul pembelajaran dalam kelas Strategi Pendanaan telah dirancang khusus untuk memenuhi kebutuhan pelaku UMKM terkait optimasi keuangan usaha melalui kanal digital dan strategi dalam mendapatkan pendanaan usaha. Di dalam kelas, peserta akan mendapatkan materi dalam bentuk teori, serta contoh aplikasinya dalam usaha. Lebih lanjut, peserta juga akan diberikan informasi terkait dengan berbagai solusi bisnis ekosistem Gojek untuk pelaku UMKM.",
          subLegalitasPerizinan:
              "Semua keabsahan perizinan melalui platform Urban Scholaria telah resmi disetujui dan mendapat pengakuan oleh pemerintah setempat. ",
          subPersyaratanPemohon: [
            "1. Pemohon harus merupakan Warga Negara Indonesia dan dapat membuktikannya dengan menyertakan Kartu Tanda Penduduk (KTP) atau Kartu Keluarga (KK).",
            "2. Pemohon minimal berusia 18 tahun pada saat mengajukan permohonan.",
          ],
          subAlurPerizinan:
              "mengisi persyaratan - verifikasi administrasi - verifikasi dokumen - survey lokasi - verifikasi hasil survey - penerbitan surat legalitas",
          subProsesWaktuKerja: "30 hari",
          link: "link",
          jumlahPersyaratan: "13 Syarat Dokumen",
        ),
      ],
      smpDetails: [
        // Data untuk TK
        SMPDetailPerizinan(
          subJenisPerizinan:
              "Informasi perizinan terkait perubahan operasional\nfasilitas untuk Sekolah Menengah Pertama",
          iconPerizinan: "iconperizinan",
          jenisPerizinan: "Perizinan Perubahan\nOperasional SMP",
          subDeskripsiPerizinan:
              "Pelatihan Strategi Strategi Pendanaan merupakan pelatihan bagi pelaku Usaha Mikro, Kecil, dan Menengah (UMKM) dalam rangka mempersiapkan Sumber Daya Manusia yang unggul di era revolusi industri 4.0. . Modul pembelajaran dalam kelas Strategi Pendanaan telah dirancang khusus untuk memenuhi kebutuhan pelaku UMKM terkait optimasi keuangan usaha melalui kanal digital dan strategi dalam mendapatkan pendanaan usaha. Di dalam kelas, peserta akan mendapatkan materi dalam bentuk teori, serta contoh aplikasinya dalam usaha. Lebih lanjut, peserta juga akan diberikan informasi terkait dengan berbagai solusi bisnis ekosistem Gojek untuk pelaku UMKM.",
          subLegalitasPerizinan:
              "Semua keabsahan perizinan melalui platform Urban Scholaria telah resmi disetujui dan mendapat pengakuan oleh pemerintah setempat. ",
          subPersyaratanPemohon: [
            "1. Pemohon harus merupakan Warga Negara Indonesia dan dapat membuktikannya dengan menyertakan Kartu Tanda Penduduk (KTP) atau Kartu Keluarga (KK).",
            "2. Pemohon minimal berusia 18 tahun pada saat mengajukan permohonan.",
          ],
          subAlurPerizinan:
              "mengisi persyaratan - verifikasi administrasi - verifikasi dokumen - survey lokasi - verifikasi hasil survey - penerbitan surat legalitas",
          subProsesWaktuKerja: "30 hari",
          link: "link",
          jumlahPersyaratan: "13 Syarat Dokumen",
        ),
      ],
      tkDetails: [
        // Data untuk TK
        TKDetailPerizinan(
          subJenisPerizinan:
              "Informasi perizinan terkait perubahan operasional\nfasilitas untuk taman kanak-kanak",
          iconPerizinan: "iconperizinan",
          jenisPerizinan: "Perizinan perubahan\noperasional TK",
          subDeskripsiPerizinan:
              "Pelatihan Strategi Strategi Pendanaan merupakan pelatihan bagi pelaku Usaha Mikro, Kecil, dan Menengah (UMKM) dalam rangka mempersiapkan Sumber Daya Manusia yang unggul di era revolusi industri 4.0. . Modul pembelajaran dalam kelas Strategi Pendanaan telah dirancang khusus untuk memenuhi kebutuhan pelaku UMKM terkait optimasi keuangan usaha melalui kanal digital dan strategi dalam mendapatkan pendanaan usaha. Di dalam kelas, peserta akan mendapatkan materi dalam bentuk teori, serta contoh aplikasinya dalam usaha. Lebih lanjut, peserta juga akan diberikan informasi terkait dengan berbagai solusi bisnis ekosistem Gojek untuk pelaku UMKM.",
          subLegalitasPerizinan:
              "Semua keabsahan perizinan melalui platform Urban Scholaria telah resmi disetujui dan mendapat pengakuan oleh pemerintah setempat. ",
          subPersyaratanPemohon: [
            "1. Pemohon harus merupakan Warga Negara Indonesia dan dapat membuktikannya dengan menyertakan Kartu Tanda Penduduk (KTP) atau Kartu Keluarga (KK).",
            "2. Pemohon minimal berusia 18 tahun pada saat mengajukan permohonan.",
          ],
          subAlurPerizinan:
              "mengisi persyaratan - verifikasi administrasi - verifikasi dokumen - survey lokasi - verifikasi hasil survey - penerbitan surat legalitas",
          subProsesWaktuKerja: "30 hari",
          link: "link",
          jumlahPersyaratan: "13 Syarat Dokumen",
        ),
      ],
      smaDetails: [
        // Data untuk TK
        SMADetailPerizinan(
          subJenisPerizinan:
              "Informasi perizinan terkait perubahan operasional\nfasilitas untuk sekolah menengah atas",
          iconPerizinan: "iconperizinan",
          jenisPerizinan: "Perizinan Perubahan \nOperasional SMA",
          subDeskripsiPerizinan:
              "Pelatihan Strategi Strategi Pendanaan merupakan pelatihan bagi pelaku Usaha Mikro, Kecil, dan Menengah (UMKM) dalam rangka mempersiapkan Sumber Daya Manusia yang unggul di era revolusi industri 4.0. . Modul pembelajaran dalam kelas Strategi Pendanaan telah dirancang khusus untuk memenuhi kebutuhan pelaku UMKM terkait optimasi keuangan usaha melalui kanal digital dan strategi dalam mendapatkan pendanaan usaha. Di dalam kelas, peserta akan mendapatkan materi dalam bentuk teori, serta contoh aplikasinya dalam usaha. Lebih lanjut, peserta juga akan diberikan informasi terkait dengan berbagai solusi bisnis ekosistem Gojek untuk pelaku UMKM.",
          subLegalitasPerizinan:
              "Semua keabsahan perizinan melalui platform Urban Scholaria telah resmi disetujui dan mendapat pengakuan oleh pemerintah setempat. ",
          subPersyaratanPemohon: [
            "1. Pemohon harus merupakan Warga Negara Indonesia dan dapat membuktikannya dengan menyertakan Kartu Tanda Penduduk (KTP) atau Kartu Keluarga (KK).",
            "2. Pemohon minimal berusia 18 tahun pada saat mengajukan permohonan.",
          ],
          subAlurPerizinan:
              "mengisi persyaratan - verifikasi administrasi - verifikasi dokumen - survey lokasi - verifikasi hasil survey - penerbitan surat legalitas",
          subProsesWaktuKerja: "30 hari",
          link: "link",
          jumlahPersyaratan: "13 Syarat Dokumen",
        ),
      ],
    ),
  ).obs;

  List<DetailPerizinan> getDetailByType(String perizinan, String subPerizinan) {
    switch (subPerizinan) {
      case 'Pembangunan':
        switch (perizinan) {
          case 'SD':
            return detailModel.value.pembangunan.sdDetails;
          case 'SMP':
            return detailModel.value.pembangunan.smpDetails;
          case 'TK':
            return detailModel.value.pembangunan.tkDetails;
          case 'SMA':
            return detailModel.value.pembangunan.smaDetails;
          default:
            return [];
        }
      case 'Operasional':
        switch (perizinan) {
          case 'SD':
            return detailModel.value.operasional.sdDetails;
          case 'SMP':
            return detailModel.value.operasional.smpDetails;
          case 'TK':
            return detailModel.value.operasional.tkDetails;
          case 'SMA':
            return detailModel.value.operasional.smaDetails;
          default:
            return [];
        }

      case 'Perubahan':
        switch (perizinan) {
          case 'SD':
            return detailModel.value.perubahanOperasional.sdDetails;
          case 'SMP':
            return detailModel.value.perubahanOperasional.smpDetails;
          case 'TK':
            return detailModel.value.perubahanOperasional.tkDetails;
          case 'SMA':
            return detailModel.value.perubahanOperasional.smaDetails;
          default:
            return [];
        }
      default:
        return [];
    }
  }
}
