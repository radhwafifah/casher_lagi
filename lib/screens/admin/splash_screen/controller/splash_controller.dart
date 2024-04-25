import 'package:get/get.dart';

import '../../../../common/controllers/app_controller.dart';

class SplashController extends GetxController {
  AppController app = Get.find<AppController>();

  @override
  void onInit() {
    super.onInit();

    ever(app.isAuthenticated, (_) => Get.offAllNamed('/splash_admin'));

    startTimer();
  }

  String isAuthenticated() => app.isAuthenticated.isTrue
      ? app.admin().role == "admin"
          ? '/home_admin'
          : '/home_admin'
      : '/login_admin';

  void startTimer() => Future.delayed(
        const Duration(seconds: 2),
        () {
          Get.offNamed(isAuthenticated());
        },
      );
}

// class SplashController extends GetxController {
//   AppController app = Get.find<AppController>();

//   @override
//   void onInit() {
//     super.onInit();

//     ever(app.isAuthenticated, (_) => Get.offNamed('/splash_admin'));
//     startTimer();
//   }

//   String isAuthenticated() => app.isAuthenticated.isTrue
//       ? app.user().role == "admin"
//           ? '/home'
//           : '/home'
//       : '/login';

//   void startTimer() => Future.delayed(const Duration(seconds: 1), () {
//     GetStorage box = GetStorage();
//         bool isFirstOpen = box.read("isFirstOpen") ?? true;
//         print(isFirstOpen);
        
//         Get.offNamed(isFirstOpen ? '/login' : isAuthenticated());
//       });
// }

      //percobaan kedua
// String isAuthenticated() => app.isAuthenticated.isTrue
//       ? app.admin().role == "admin"
//           ? '/home_admin'
//           : '/home_admin'
//       : '/login_admin';

//   void startTimer() => Future.delayed(const Duration(seconds: 2), () {
//         GetStorage box = GetStorage();
//         bool isFirstOpen = box.read("isFirstOpen") ?? true;
//         print(isFirstOpen);

//         Get.offNamed(isAuthenticated());
//       });
//}