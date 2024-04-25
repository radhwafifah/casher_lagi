import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../resources/models/user_model.dart';

class AppController extends GetxController {
  RxBool isAuthenticated = false.obs;
  GetStorage box = GetStorage();

  @override
  void onInit() {
    super.onInit();

    authCheck();
  }

  void authCheck() {
    if (box.read("admin") != null) {
      isAuthenticated.value = true;
    } else {
      isAuthenticated.value = false;
    }
  }

  UserModel admin() {
    return UserModel.fromMap(box.read("admin") as Map<String, dynamic>);
  }
}