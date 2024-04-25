import 'package:get/get.dart';

import '../controller/tambahbarang_controller.dart';


class TambahBarangBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(TambahBarangController());
  }
  
}