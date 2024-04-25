import 'package:get/get.dart';

import '../controller/databarang_controller.dart';

class DataBarangPBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(DataBarangPController());
  }
  
}