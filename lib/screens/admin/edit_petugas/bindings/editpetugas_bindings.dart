import 'package:get/get.dart';

import '../controller/editpetugas_controller.dart';



class EditPetugasBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(EditPetugasController());
  }
  
}