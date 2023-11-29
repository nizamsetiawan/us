import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:us_mobile/models/profile_model.dart';

class ProfileController extends GetxController {
  var userProfile = UserProfile(
    fullName: 'Regi Muhammar',
    photoUrl: 'assets/images/photoprofile.png',
    role: "Pemohon",
  ).obs;
}

class EditProfileController extends GetxController {
  RxBool isChecked = false.obs;
  var userProfile = UserProfile(
    fullName: 'Regi Muhammar',
    photoUrl: 'assets/images/photoprofile.png',
    role: "Pemohon",
    birthDate: '', // Isi dengan data awal atau kosong
    gender: '',
    email: '',
    nik: '',
    phoneNumber: '',
    schoolName: '',
    province: '',
    city: '',
    district: '',
    subDistrict: '',
    address: '',
  ).obs;

  TextEditingController nameController = TextEditingController();
  TextEditingController birthDateController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController nikController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController schoolNameController = TextEditingController();
  TextEditingController provinceController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController districtController = TextEditingController();
  TextEditingController subDistrictController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  @override
  void onInit() {
    nameController.text = userProfile.value.fullName;
    super.onInit();
  }

  @override
  void onClose() {
    nameController.dispose();
    birthDateController.dispose();
    genderController.dispose();
    emailController.dispose();
    nikController.dispose();
    phoneNumberController.dispose();
    schoolNameController.dispose();
    provinceController.dispose();
    cityController.dispose();
    districtController.dispose();
    subDistrictController.dispose();
    addressController.dispose();
    super.onClose();
  }
}

class FAQController extends GetxController {
  var faqs = <FAQModel>[
    FAQModel(
      question: 'Apakah data saat mengajukan perizinan bisa diubah?',
      answer:
          'Saat perizinan sudah diajukan, data perizinan tidak dapat diubah sampai pengajuan dizinkan/ditolak.',
    ),
    FAQModel(
      question: 'Pertanyaan 2',
      answer: 'Jawaban untuk pertanyaan 2.',
    ),
    FAQModel(
      question: 'Pertanyaan 3',
      answer: 'Jawaban untuk pertanyaan 3.',
    ),
    // Tambahkan FAQModel lainnya sesuai kebutuhan
  ].obs;
}
