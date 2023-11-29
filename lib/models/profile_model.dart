import 'package:get/get.dart';

class UserProfile {
  String fullName;
  String photoUrl;
  String role;
  String? birthDate;
  String? gender;
  String? email;
  String? nik;
  String? phoneNumber;
  String? schoolName;
  String? province;
  String? city;
  String? district;
  String? subDistrict;
  String? address;

  UserProfile({
    required this.fullName,
    required this.photoUrl,
    required this.role,
    this.birthDate,
    this.gender,
    this.email,
    this.nik,
    this.phoneNumber,
    this.schoolName,
    this.province,
    this.city,
    this.district,
    this.subDistrict,
    this.address,
  });
}

class FAQModel {
  late String question;
  late String answer;
  RxBool expanded = false.obs;

  FAQModel({required this.question, required this.answer});
}
