import 'package:get/get.dart';
import '../../../../common/controllers/apppetugas_controller.dart';
import '../../../../resources/databases/penjualan_database.dart';
import '../../../../resources/models/penjualan_model.dart';

class TransaksiController extends GetxController {
  AppPetugasController app = Get.find<AppPetugasController>();

  Future<void> tambahTransaksi({
    required int memberId,
    required String namaProduk,
    required String harga,
    required String jumlah,
    required String total,
    required String totalHarga,
    required String totalPembayaran,
    required String diskon,
    required String uang,
    required String kembalian,
  }) async {
    try {
      await PenjualanDatabase().insert(
        model: PenjualanModel(
          memberId: memberId,
          namaProduk: namaProduk,
          harga: harga,
          jumlah: jumlah,
          total: total,
          totalHarga: totalHarga,
          totalPembayaran: totalPembayaran,
          diskon: diskon,
          uang: uang,
          kembalian: kembalian,
          createdAt: DateTime.now().toIso8601String(),
        ),
      );
    } catch (e) {
      print(e);
    }
  }
}
