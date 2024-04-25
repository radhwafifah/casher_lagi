import 'package:get/get.dart';

import '../controller/laporantransaksi_controller.dart';


class LaporanTransaksiBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(LaporanTransaksiController());
  }
  
}