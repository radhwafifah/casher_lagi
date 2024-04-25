import 'package:get/get.dart';

import '../controller/databarang_controller.dart';

class DataBarangBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(DataBarangController());
  }
  
}