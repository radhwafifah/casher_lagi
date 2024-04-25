import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/controllers/app_controller.dart';
import '../../../../resources/databases/produk_database.dart';
import '../../../../resources/models/produk_model.dart';
import '../../data_barang/controller/databarang_controller.dart';

class TambahBarangController extends GetxController {
  AppController app = Get.find<AppController>();
  DataBarangController create = Get.find<DataBarangController>();
  //Map<String, dynamic> listPetugas = Get.arguments;

  late TextEditingController namaProduk;
  late TextEditingController harga;
  late TextEditingController stok;

  @override
  void onInit() {
    super.onInit();

    namaProduk = TextEditingController();
    harga = TextEditingController();
    stok = TextEditingController();
  }

  Future<void> tambahBarang() async {
    try {
      var result = await ProdukDatabase().insert(
          model: ProdukModel(
              userId: app.admin().id!,
              namaProduk: namaProduk.text,
              harga: harga.text,
              stok: stok.text,
              createdAt: DateTime.now().toIso8601String()));
      Get.toNamed('/data_barang_admin', arguments: result[0]);
    } catch (e) {
      print(e);
    }
  }
}