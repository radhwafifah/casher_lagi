import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../auth/controller/auth_controller.dart';
import 'controller/home_controller.dart';

class Home extends GetView<HomeController> {
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
              AuthController auth = Get.put(AuthController());
              auth.logout();
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
                  Get.offNamed('/kelola_petugas_admin');
                },
                child: Container(
                  height: 100,
                  color: Color(0xFF64677A),
                  child: Center(
                    child: Text(
                      'Kelola Petugas',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              InkWell(
                onTap: () {
                  Get.offNamed('/data_barang_admin');
                },
                child: Container(
                  height: 100,
                  color: Color(0xFF9A9A9A),
                  child: Center(
                    child: Text(
                      'Pendataan Barang',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              InkWell(
                onTap: () {
                  Get.offNamed('/laporan_transaksi_admin');
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
                  Get.offNamed('/data_member_admin');
                },
                child: Container(
                  height: 100,
                  color: Color(0xFF9A9A9A),
                  child: Center(
                    child: Text(
                      'Data Member',
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
