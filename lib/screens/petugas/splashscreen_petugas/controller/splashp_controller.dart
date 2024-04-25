import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../../../../common/controllers/apppetugas_controller.dart';

class SplashPetugasController extends GetxController {
  AppPetugasController app = Get.find<AppPetugasController>();

  @override
  void onInit() {
    super.onInit();

    ever(app.isAuthenticated, (_) => Get.offNamed('/splash_petugas'));
    startTimer();
  }

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
String isAuthenticated() => app.isAuthenticated.isTrue
      ? app.petugas().role == "petugas"
          ? '/home_petugas'
          : '/home_petugas'
      : '/login_petugas';

  void startTimer() => Future.delayed(const Duration(seconds: 2), () {
        GetStorage box = GetStorage();
        bool isFirstOpen = box.read("isFirstOpen") ?? true;
        print(isFirstOpen);

        Get.offNamed(isAuthenticated());
      });
}