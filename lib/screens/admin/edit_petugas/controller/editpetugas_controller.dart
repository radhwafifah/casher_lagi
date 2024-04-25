import 'package:get/get.dart';

import '../../../../common/controllers/app_controller.dart';
import '../../../../resources/databases/petugas_database.dart';
import '../../../../resources/models/petugas_model.dart';

class EditPetugasController extends GetxController {
  AppController app = Get.find<AppController>();

  Future<void> editPetugas({
    required int petugasId,
    required String nomorKasir,
    required String emailKasir,
    required String namaKasir,
    required String password,
    required String role,
  }) async {
    try {
      await PetugasDatabase().update(
        petugasId: petugasId,
        model: PetugasModel(
          userId: app.admin().id!,
          nomorKasir: nomorKasir,
          emailKasir: emailKasir,
          namaKasir: namaKasir,
          password: password,
          role: 'petugas',
        ),
      );
    } catch (e) {
      print(e);
    }
  }
}
