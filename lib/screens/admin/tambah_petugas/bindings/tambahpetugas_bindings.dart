import 'package:get/get.dart';

import '../controller/tambahpetugas_controller.dart';


class TambahPetugasBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(TambahPetugasController());
  }
  
}