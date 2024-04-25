import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../login_petugas/controller/loginp_controller.dart';
import 'controller/homep_controller.dart';

class HomePetugas extends GetView<HomePetugasController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'CASH-ER',
            style: TextStyle(color: Colors.grey),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.logout, color: Colors.black,),
              onPressed: () {
              LoginPetugasController auth = Get.put(LoginPetugasController());
              auth.logoutPetugas();
              },
            ),
          ],
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              InkWell(
                onTap: () {
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => KelolaPetugas()));
                  Get.offNamed('/transaksi_petugas');
                },
                child: Container(
                  height: 100,
                  color: Color(0xFF64677A),
                  child: Center(
                    child: Text(
                      'Transaksi',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              InkWell(
                onTap: () {
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => PendataanBarang()));
                  Get.offNamed('/data_barang_petugas');
                },
                child: Container(
                  height: 100,
                  color: Color(0xFF9A9A9A),
                  child: Center(
                    child: Text(
                      'Lihat Data Barang',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              InkWell(
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => LaporanTransaksiP()));
                  Get.offNamed('/laporan_transaksi_petugas');
                },
                child: Container(
                  height: 100,
                  color: Color(0xFF64677A),
                  child: Center(
                    child: Text(
                      'Laporan Transaksi',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              InkWell(
                onTap: () {
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => KelolaMember()));
                  Get.offNamed('/kelola_member_petugas');
                },
                child: Container(
                  height: 100,
                  color: Color(0xFF9A9A9A),
                  child: Center(
                    child: Text(
                      'Kelola Member',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }
}
