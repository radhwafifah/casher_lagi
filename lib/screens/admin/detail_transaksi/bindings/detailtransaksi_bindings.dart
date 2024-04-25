import 'package:get/get.dart';

import '../controller/detailtransaksi_controller.dart';

class DetailTransaksiBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(DetailTransaksiController());
  }
  
}