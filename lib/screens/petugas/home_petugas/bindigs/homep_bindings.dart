import 'package:get/get.dart';

import '../controller/homep_controller.dart';


class HomePetugasBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(HomePetugasController());
  }
  
}