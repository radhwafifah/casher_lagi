import 'package:get/get.dart';

import '../../../../common/controllers/app_controller.dart';
import '../../../../resources/databases/produk_database.dart';
import '../../../../resources/models/produk_model.dart';

class EditBarangController extends GetxController {
  AppController app = Get.find<AppController>();

  Future<void> editBarang({
    required int produkId,
    required String namaProduk,
    required String harga,
    required String stok,
  }) async {
    try {
      await ProdukDatabase().update(
        produkId: produkId,
        model: ProdukModel(
          userId: app.admin().id!,
          namaProduk: namaProduk,
          harga: harga,
          stok: stok,
        ),
      );
    } catch (e) {
      print(e);
    }
  }
}
