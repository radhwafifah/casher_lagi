import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/editpetugas_controller.dart';

class EditPetugas extends GetView<EditPetugasController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Petugas'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Get.off('/kelola_petugas_admin');
          },
        ),
        centerTitle: true,
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
                  onPressed: () {
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
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
