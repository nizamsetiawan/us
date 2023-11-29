import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:us_mobile/constant/colors.dart';
import 'package:us_mobile/controllers/profile_controller.dart';
import 'package:us_mobile/routes/app_routes.dart';
import 'package:us_mobile/widgets/button_custom.dart';

class EditProfileView extends StatelessWidget {
  final ProfileController _profileController = Get.put(ProfileController());
  final EditProfileController _editprofileController =
      Get.put(EditProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: appbrand500,
          title: const Text("Data Profile"),
          centerTitle: true,
          elevation: 0,
          leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: const Icon(Icons.arrow_back_ios_new),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              _profileController.userProfile.value
                                  .photoUrl, // Ganti dengan path gambar yang sesuai
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height:
                                  200, // Sesuaikan dengan tinggi yang diinginkan
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Ganti Foto Profile",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: appbrand500,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16),
                          child: Divider(
                            color: appneutral200,
                            thickness: 3,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Info Pemilik Akun",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: appbrand800,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Nama Lengkap",
                        style: TextStyle(fontSize: 12, color: appneutral500),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            border: Border.all(color: appneutral400)),
                        child: TextField(
                          controller: _editprofileController.nameController,
                          autocorrect: false,
                          style: TextStyle(fontSize: 12, color: appneutral900),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.fromLTRB(16, 0, 16, 10),
                              hintText: "Masukkan Nama"),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Tanggal Lahir",
                        style: TextStyle(fontSize: 12, color: appneutral500),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            border: Border.all(color: appneutral400)),
                        child: TextField(
                          controller:
                              _editprofileController.birthDateController,
                          autocorrect: false,
                          style: TextStyle(fontSize: 12, color: appneutral900),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.fromLTRB(16, 0, 16, 10),
                              hintText: "Masukkan Tanggal Lahir"),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Jenis Kelamin",
                        style: TextStyle(fontSize: 12, color: appneutral500),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            border: Border.all(color: appneutral400)),
                        child: TextField(
                          controller: _editprofileController.genderController,
                          autocorrect: false,
                          style: TextStyle(fontSize: 12, color: appneutral900),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.fromLTRB(16, 0, 16, 10),
                              hintText: "Masukkan Jenis Kelamin"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16, bottom: 16),
                        child: Divider(
                          color: appneutral200,
                          thickness: 3,
                        ),
                      ),
                      Text(
                        "Info Identitas",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: appbrand800,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Alamat Email",
                        style: TextStyle(fontSize: 12, color: appneutral500),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            border: Border.all(color: appneutral400)),
                        child: TextField(
                          controller: _editprofileController.emailController,
                          autocorrect: false,
                          style: TextStyle(fontSize: 12, color: appneutral900),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.fromLTRB(16, 0, 16, 10),
                              hintText: "Masukkan Email"),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "NIK",
                        style: TextStyle(fontSize: 12, color: appneutral500),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            border: Border.all(color: appneutral400)),
                        child: TextField(
                          controller: _editprofileController.nikController,
                          autocorrect: false,
                          style: TextStyle(fontSize: 12, color: appneutral900),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.fromLTRB(16, 0, 16, 10),
                              hintText: "Masukkan NIK"),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Nomer Hp",
                        style: TextStyle(fontSize: 12, color: appneutral500),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            border: Border.all(color: appneutral400)),
                        child: TextField(
                          controller:
                              _editprofileController.phoneNumberController,
                          autocorrect: false,
                          style: TextStyle(fontSize: 12, color: appneutral900),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.fromLTRB(16, 0, 16, 10),
                              hintText: "Masukkan Nomer Hp"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16, bottom: 16),
                        child: Divider(
                          color: appneutral200,
                          thickness: 3,
                        ),
                      ),
                      Text(
                        "Sekolah",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: appbrand800,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Nama Sekolah",
                        style: TextStyle(fontSize: 12, color: appneutral500),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            border: Border.all(color: appneutral400)),
                        child: TextField(
                          controller:
                              _editprofileController.schoolNameController,
                          autocorrect: false,
                          style: TextStyle(fontSize: 12, color: appneutral900),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.fromLTRB(16, 0, 16, 10),
                              hintText: "Masukkan Nama Sekolah"),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Provinsi",
                        style: TextStyle(fontSize: 12, color: appneutral500),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            border: Border.all(color: appneutral400)),
                        child: TextField(
                          controller: _editprofileController.provinceController,
                          autocorrect: false,
                          style: TextStyle(fontSize: 12, color: appneutral900),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.fromLTRB(16, 0, 16, 10),
                              hintText: "Masukkan Provinsi"),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Kota/Kabupaten",
                        style: TextStyle(fontSize: 12, color: appneutral500),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            border: Border.all(color: appneutral400)),
                        child: TextField(
                          controller: _editprofileController.cityController,
                          autocorrect: false,
                          style: TextStyle(fontSize: 12, color: appneutral900),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.fromLTRB(16, 0, 16, 10),
                              hintText: "Masukkan Kota/Kabupaten"),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Kecamatan",
                        style: TextStyle(fontSize: 12, color: appneutral500),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            border: Border.all(color: appneutral400)),
                        child: TextField(
                          controller: _editprofileController.districtController,
                          autocorrect: false,
                          style: TextStyle(fontSize: 12, color: appneutral900),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.fromLTRB(16, 0, 16, 10),
                              hintText: "Masukkan Kecamatan"),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Desa/kelurahan",
                        style: TextStyle(fontSize: 12, color: appneutral500),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            border: Border.all(color: appneutral400)),
                        child: TextField(
                          controller:
                              _editprofileController.subDistrictController,
                          autocorrect: false,
                          style: TextStyle(fontSize: 12, color: appneutral900),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.fromLTRB(16, 0, 16, 10),
                              hintText: "Masukkan Desa/Kelurahan"),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Alamat Sekolah",
                        style: TextStyle(fontSize: 12, color: appneutral500),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            border: Border.all(color: appneutral400)),
                        child: TextField(
                          controller: _editprofileController.addressController,
                          autocorrect: false,
                          style: TextStyle(fontSize: 12, color: appneutral900),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.fromLTRB(16, 0, 16, 10),
                              hintText: "Masukkan Alamat Sekolah"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 16,
                        ),
                        child: Divider(
                          color: appneutral200,
                          thickness: 3,
                        ),
                      ),
                      Obx(() => CheckboxListTile(
                            activeColor: appbrand500,
                            title: Text(
                              'Saya menyatakan bahwa seluruh data benar.',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: appneutral500,
                              ),
                            ),
                            value: _editprofileController.isChecked.value,
                            onChanged: (newValue) {
                              _editprofileController.isChecked.value =
                                  newValue ?? false;
                            },
                            controlAffinity: ListTileControlAffinity.leading,
                          )),
                      GestureDetector(
                        onTap: () {
                          if (_editprofileController.isChecked.value) {
                            // Save changes to the database or API
                            _editprofileController.userProfile.update((val) {
                              val!.fullName =
                                  _editprofileController.nameController.text;
                              val.birthDate = _editprofileController
                                  .birthDateController.text;
                              val.gender =
                                  _editprofileController.genderController.text;
                              val.email =
                                  _editprofileController.emailController.text;
                              val.nik =
                                  _editprofileController.nikController.text;
                              val.phoneNumber = _editprofileController
                                  .phoneNumberController.text;
                              val.schoolName = _editprofileController
                                  .schoolNameController.text;
                              val.province = _editprofileController
                                  .provinceController.text;
                              val.city =
                                  _editprofileController.cityController.text;
                              val.district = _editprofileController
                                  .districtController.text;
                              val.subDistrict = _editprofileController
                                  .subDistrictController.text;
                              val.address =
                                  _editprofileController.addressController.text;
                              // Update other fields similarly
                            });
                            Get.snackbar(
                                'Informasi', 'Data telah berhasil disimpan',
                                backgroundColor: appneutral50,
                                duration: Duration(seconds: 2));
                            Get.offAllNamed(RouteNames.bottomNavigation);
                          } else {
                            Get.snackbar('Perhatian',
                                'Harap setujui pernyataan terlebih dahulu',
                                backgroundColor: appneutral50);
                          }
                        },
                        child: ButtonWidgets(
                          label: "Simpan",
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
