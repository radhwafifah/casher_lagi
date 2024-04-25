import 'package:get/get.dart';

import '../controller/editmember_controller.dart';

class EditMemberBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(EditMemberController());
  }
  
}