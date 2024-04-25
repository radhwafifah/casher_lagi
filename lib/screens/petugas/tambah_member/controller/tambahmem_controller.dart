import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/controllers/apppetugas_controller.dart';
import '../../../../resources/databases/member_database.dart';
import '../../../../resources/models/member_model.dart';
import '../../kelola_member/controller/kelolamem_controller.dart';

class TambahMemberController extends GetxController {
  AppPetugasController app = Get.find<AppPetugasController>();
  KelolaMemberController create = Get.find<KelolaMemberController>();
  //Map<String, dynamic> listPetugas = Get.arguments;

  late TextEditingController namaMember;
  late TextEditingController nomorTelepon;

  @override
  void onInit() {
    super.onInit();

    namaMember = TextEditingController();
    nomorTelepon = TextEditingController();
  }

  Future<void> tambahMember() async {
    try {
      var result = await MemberDatabase().insert(
          model: MemberModel(
              petugasId: app.petugas().petugasId!,
              namaMember: namaMember.text,
              nomorTelepon: nomorTelepon.text,
              createdAt: DateTime.now().toIso8601String()));
      Get.toNamed('/kelola_member_petugas', arguments: result[0]);
    } catch (e) {
      print(e);
    }
  }
}