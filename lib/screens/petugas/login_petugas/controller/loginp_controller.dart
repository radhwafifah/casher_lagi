import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../../../../common/controllers/apppetugas_controller.dart';
import '../../../../resources/databases/petugaslogin_database.dart';
import '../../../../resources/models/petugas_model.dart';

class LoginPetugasController extends GetxController {
  AppPetugasController app = Get.find<AppPetugasController>();
  final GoTrueClient _auth = Supabase.instance.client.auth;
  final GetStorage _box = GetStorage();

  late TextEditingController email;
  late TextEditingController password;

  RxBool obscureText = false.obs;

  @override
  void onInit() {
    super.onInit();
    email = TextEditingController();
    password = TextEditingController();
  }

  // @override
  // void onClose() {
  //   super.onClose();
  //   email.dispose();
  //   username.dispose();
  //   name.dispose();
  //   password.dispose();
  // }

  Future<void> loginPetugas() async {
    try {
      AuthResponse response = await _auth.signInWithPassword(
          email: email.text, password: password.text);

      if (response.user != null) {
        PetugasModel? petugasModel = await LoginPetugasDatabase().select(email: email.text);
        if (petugasModel != null) {
          print(petugasModel.toMap());
          await _box.write("petugas", petugasModel.toMap());

          app.isAuthenticated.value = true;
          showNotification("Login Berhasil", Colors.green);
        } else {
          showNotification("User tidak ditemukan", Colors.red);
        }
      } else {
        showNotification("Password salah", Colors.red);
      }
    } catch (e) {
      //showNotification("Email atau Password salah", Colors.red);
      print(e);
    }
  }

  void showNotification(String message, Color color) {
    Get.snackbar("Notifikasi", message,
        snackPosition: SnackPosition.TOP,
        duration: Duration(seconds: 2),
        backgroundColor: color,
        colorText: Colors.white);
  }

  Future<void> logoutPetugas() async {
    try {
      if (_box.read("petugas") != null) {
        _box.remove('petugas');
      }
      await _auth.signOut();

      app.isAuthenticated.value = false;
    } catch (e) {
      print(e);
    }
  }
}