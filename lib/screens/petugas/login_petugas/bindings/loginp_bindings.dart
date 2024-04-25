import 'package:get/get.dart';

import '../controller/loginp_controller.dart';

class LoginPetugasBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(LoginPetugasController());
  }
  
}