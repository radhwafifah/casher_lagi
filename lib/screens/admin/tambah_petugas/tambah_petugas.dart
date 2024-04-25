import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/tambahpetugas_controller.dart';

class TambahPetugas extends GetView<TambahPetugasController> {
  final TambahPetugasController controller = Get.put(TambahPetugasController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tambah Petugas', style: TextStyle(color: Colors.black),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            // Navigator.push(
            //     context, MaterialPageRoute(builder: (context) => KelolaPetugas()));
            Get.offNamed('/kelola_petugas_admin');
          },
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Nomor Kasir',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 10.0),
            TextField(
              controller: controller.nomorKasir,
              decoration: InputDecoration(
                hintText: 'Masukkan Nomor Kasir',
                border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Email Kasir',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 10.0),
            TextField(
              controller: controller.emailKasir,
              decoration: InputDecoration(
                hintText: 'Masukkan Email Kasir',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Nama Kasir',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 10.0),
            TextField(
              controller: controller.namaKasir,
              decoration: InputDecoration(
                hintText: 'Masukkan Nama Kasir',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Password',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 10.0),
            TextField(
              controller: controller.password,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Masukkan Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 50),
            Container(
                width: double.infinity,
                height: 48,
                margin: const EdgeInsets.symmetric(horizontal: 15),
                child: FilledButton(
                  style: FilledButton.styleFrom(
                    backgroundColor: Color(0xFF64677A),
                  ),
                  onPressed: () async {
                    print('loading');
                    await controller.tambahpetugas();
                  },
                  child: Text(
                    "Simpan",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
