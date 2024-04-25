import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../resources/models/petugas_model.dart';

class AppPetugasController extends GetxController {
  RxBool isAuthenticated = false.obs;
  GetStorage box = GetStorage();

  @override
  void onInit() {
    super.onInit();

    authpCheck();
  }

  void authpCheck() {
    if (box.read("petugas") != null) {
      isAuthenticated.value = true;
    } else {
      isAuthenticated.value = false;
    }
  }

  PetugasModel petugas() {
    return PetugasModel.fromMap(box.read("petugas") as Map<String, dynamic>);
  }
}