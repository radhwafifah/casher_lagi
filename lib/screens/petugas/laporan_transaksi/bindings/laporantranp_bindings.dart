import 'package:get/get.dart';

import '../controller/laporantranp_controller.dart';

class LaporanTransaksiPBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(LaporanTransaksiPController());
  }
  
}