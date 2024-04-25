import 'package:get/get.dart';

import '../../../../common/controllers/app_controller.dart';
import '../../../../resources/databases/petugas_database.dart';

class KelolaPetugasController extends GetxController {
  AppController app = Get.find<AppController>();

  @override
  void onInit() {
    super.onInit();
    getPetugas();
  }

  List<Map<String, dynamic>> petugas = [];

  void getPetugas() async {
    List<Map<String, dynamic>> result =
        await PetugasDatabase().select(id: app.admin().id!);
    if (result.isNotEmpty) {
      petugas.addAll(result);

      refresh();
    } else {
      print("Tidak ada");
    }
  }

  Future<void> delete(String nomorKasir) async {
    bool result = await PetugasDatabase().delete(nomorKasir: 'nomorKasir');

    if (result) {
      petugas = [];
      getPetugas();
    } else {
      print("Hapus data petugas gagal");
    }
  }
}