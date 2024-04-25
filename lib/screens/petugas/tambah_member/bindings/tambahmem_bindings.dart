import 'package:get/get.dart';

import '../controller/tambahmem_controller.dart';

class TambahMemberBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(TambahMemberController());
  }
  
}