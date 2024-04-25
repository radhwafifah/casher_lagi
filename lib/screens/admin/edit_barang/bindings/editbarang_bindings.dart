import 'package:get/get.dart';

import '../controller/editbarang_controller.dart';


class EditBarangBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(EditBarangController());
  }
  
}