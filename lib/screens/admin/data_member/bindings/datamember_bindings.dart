import 'package:get/get.dart';

import '../controller/datamember_controller.dart';

class DataMemberBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(DataMemberController());
  }
  
}