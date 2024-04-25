import 'package:get/get.dart';

import '../controller/splashp_controller.dart';

class SplashPetugasBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(SplashPetugasController());
  }
  
}