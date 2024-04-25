import 'package:get/get.dart';

import '../controller/kelolapetugas_controller.dart';

class KelolaPetugasBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(KelolaPetugasController());
  }
  
}