import 'package:get/get.dart';

import '../controller/kelolamem_controller.dart';


class KelolaMemberBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(KelolaMemberController());
  }
  
}