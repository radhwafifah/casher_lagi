import 'package:get/get.dart';

import '../../../../common/controllers/app_controller.dart';
import '../../../../resources/databases/produk_database.dart';

class DataBarangController extends GetxController {
  AppController app = Get.find<AppController>();

  @override
  void onInit() {
    super.onInit();

    getListProduk();
  }

  List<Map<String, dynamic>> listProduk = [];

  void getListProduk() async {
    List<Map<String, dynamic>> result =
        await ProdukDatabase().select(id: app.admin().id!);
    if (result.isNotEmpty) {
      listProduk.addAll(result);

      refresh();
    } else {
      print("Tidak ada");
    }
  }
}