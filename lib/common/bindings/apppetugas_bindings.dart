import 'package:get/get.dart';

import '../controllers/apppetugas_controller.dart';

class AppPetugasBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(AppPetugasController());
  }
}