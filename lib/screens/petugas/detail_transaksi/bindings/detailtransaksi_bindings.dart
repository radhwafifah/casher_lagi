import 'package:get/get.dart';

import '../controller/detailtransaksi_controller.dart';

class DetailTransaksiPBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(DetailTransaksiPController());
  }
  
}