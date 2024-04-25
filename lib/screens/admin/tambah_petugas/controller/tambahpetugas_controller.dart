import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/controllers/app_controller.dart';
import '../../../../resources/databases/petugas_database.dart';
import '../../../../resources/models/petugas_model.dart';
import '../../kelola_petugas/controller/kelolapetugas_controller.dart';

class TambahPetugasController extends GetxController {
  AppController app = Get.find<AppController>();
  KelolaPetugasController create = Get.find<KelolaPetugasController>();
  //Map<String, dynamic> listPetugas = Get.arguments;

  late TextEditingController nomorKasir;
  late TextEditingController emailKasir;
  late TextEditingController namaKasir;
  late TextEditingController password;

  @override
  void onInit() {
    super.onInit();

    nomorKasir = TextEditingController();
    emailKasir = TextEditingController();
    namaKasir = TextEditingController();
    password = TextEditingController();
  }

  Future<void> tambahpetugas() async {
    try {
      print(app.admin().id);
      var result = await PetugasDatabase().insert(
          model: PetugasModel(
              userId: app.admin().id!,
              nomorKasir: nomorKasir.text,
              emailKasir: emailKasir.text,
              namaKasir: namaKasir.text,
              password: password.text,
              role: 'petugas',
              createdAt: DateTime.now().toIso8601String()));
      Get.toNamed('/kelola_petugas_admin', arguments: result[0]);
    } catch (e) {
      print(e);
    }
  }
}
