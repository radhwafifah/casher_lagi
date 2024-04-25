import 'package:get/get.dart';

import '../controller/transaksi_controller.dart';

class TransaksiBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(TransaksiController());
  }
  
}