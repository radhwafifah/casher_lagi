import 'package:get/get.dart';

import '../screens/admin/auth/bindings/auth_bindings.dart';
import '../screens/admin/auth/login.dart';
import '../screens/admin/auth/register.dart';
import '../screens/admin/data_barang/bindings/databarang_bindings.dart';
import '../screens/admin/data_barang/data_barang.dart';
import '../screens/admin/data_member/bindings/datamember_bindings.dart';
import '../screens/admin/data_member/data_member.dart';
import '../screens/admin/detail_transaksi/bindings/detailtransaksi_bindings.dart';
import '../screens/admin/detail_transaksi/detail_transaksi.dart';
import '../screens/admin/edit_barang/bindings/editbarang_bindings.dart';
import '../screens/admin/edit_barang/edit_barang.dart';
import '../screens/admin/edit_petugas/bindings/editpetugas_bindings.dart';
import '../screens/admin/edit_petugas/edit_petugas.dart';
import '../screens/admin/home/bindings/home_bindings.dart';
import '../screens/admin/home/home.dart';
import '../screens/admin/kelola_petugas/bindings/kelolapetugas_bindings.dart';
import '../screens/admin/kelola_petugas/kelola_petugas.dart';
import '../screens/admin/laporan_transaksi/bindings/laporantransaksi_bindings.dart';
import '../screens/admin/laporan_transaksi/laporan_transaksi.dart';
import '../screens/admin/splash_screen/bindings/splash_bindings.dart';
import '../screens/admin/splash_screen/splash_screen.dart';
import '../screens/admin/tambah_barang/bindings/tambahbarang_bindings.dart';
import '../screens/admin/tambah_barang/tambah_barang.dart';
import '../screens/admin/tambah_petugas/bindings/tambahpetugas_bindings.dart';
import '../screens/admin/tambah_petugas/tambah_petugas.dart';
import '../screens/petugas/data_barang/bindings/databarang_bindings.dart';
import '../screens/petugas/data_barang/data_barang.dart';
import '../screens/petugas/detail_transaksi/bindings/detailtransaksi_bindings.dart';
import '../screens/petugas/detail_transaksi/detail_transaksi.dart';
import '../screens/petugas/edit_member/bindings/editmember_bindings.dart';
import '../screens/petugas/edit_member/edit_member.dart';
import '../screens/petugas/home_petugas/bindigs/homep_bindings.dart';
import '../screens/petugas/home_petugas/home_petugas.dart';
import '../screens/petugas/kelola_member/bindings/kelolamem_bindings.dart';
import '../screens/petugas/kelola_member/kelola_member.dart';
import '../screens/petugas/laporan_transaksi/bindings/laporantranp_bindings.dart';
import '../screens/petugas/laporan_transaksi/laporan_transaksi.dart';
import '../screens/petugas/login_petugas/bindings/loginp_bindings.dart';
import '../screens/petugas/login_petugas/login_petugas.dart';
import '../screens/petugas/splashscreen_petugas/bindings/splashp_bindings.dart';
import '../screens/petugas/splashscreen_petugas/splashscreen_petugas.dart';
import '../screens/petugas/tambah_member/bindings/tambahmem_bindings.dart';
import '../screens/petugas/tambah_member/tambah_member.dart';
import '../screens/petugas/transaksi/bindings/transaksi_bindings.dart';
import '../screens/petugas/transaksi/transaksi.dart';

class AppRoutes {
  static const initial = "/splash_admin";
  static final routes = [
    GetPage(
      name: '/splash_admin',
      page: () => SplashScreen(),
      binding: SplashBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(name: '/login_admin', page: () => Login(), binding: AuthBinding()),
    GetPage(name: '/register_admin', page: () => Register(), binding: AuthBinding()),
    GetPage(name: '/home_admin', page: () => Home(), binding: HomeBinding()),
    GetPage(name: '/data_barang_admin', page: () => PendataanBarang(), binding: DataBarangBinding()),
    GetPage(name: '/data_member_admin', page: () => DataMember(), binding: DataMemberBinding()),
    GetPage(name: '/detail_transaksi_admin', page: () => DetailTransaksi(), binding: DetailTransaksiBinding()),
    GetPage(name: '/edit_barang_admin', page: () => EditBarang(), binding: EditBarangBinding()),
    GetPage(name: '/edit_petugas_admin', page: () => EditPetugas(), binding: EditPetugasBinding()),
    GetPage(name: '/kelola_petugas_admin', page: () => KelolaPetugas(), binding: KelolaPetugasBinding()),
    GetPage(name: '/laporan_transaksi_admin', page: () => LaporanTransaksi(), binding: LaporanTransaksiBinding()),
    GetPage(name: '/tambah_barang_admin', page: () => TambahBarang(), binding: TambahBarangBinding()),
    GetPage(name: '/tambah_petugas_admin', page: () => TambahPetugas(), binding: TambahPetugasBinding()),
    // routes petugas
    GetPage(name: '/data_barang_petugas', page: () => DataBarang(), binding: DataBarangPBinding()),
    GetPage(name: '/detail_transaksi_petugas', page: () => DetailTransaksiP(), binding: DetailTransaksiPBinding()),
    GetPage(name: '/edit_member_petugas', page: () => EditMember(), binding: EditMemberBinding()),
    GetPage(name: '/home_petugas', page: () => HomePetugas(), binding: HomePetugasBinding()),
    GetPage(name: '/kelola_member_petugas', page: () => KelolaMember(), binding: KelolaMemberBinding()),
    GetPage(name: '/laporan_transaksi_petugas', page: () =>  LaporanTransaksiP(), binding: LaporanTransaksiPBinding()),
    GetPage(name: '/login_petugas', page: () => LoginPetugas(), binding: LoginPetugasBinding()),
    GetPage(name: '/splash_petugas', page: () => SplashScreenP(), binding: SplashPetugasBinding()),
    GetPage(name: '/tambah_member_petugas', page: () => TambahMember(), binding: TambahMemberBinding()),
    GetPage(name: '/transaksi_petugas', page: () => Transaksi(), binding: TransaksiBinding()),
  ];
}
