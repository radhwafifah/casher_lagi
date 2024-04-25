import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/editbarang_controller.dart';

class EditBarang extends GetView<EditBarangController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Barang'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Get.off('/edit_barang_admin');
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
              'Nama Barang',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 10.0),
            TextField(
              decoration: InputDecoration(
                hintText: 'Masukkan Nama Barang',
                border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Harga Barang',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 10.0),
            TextField(
              decoration: InputDecoration(
                hintText: 'Masukkan Harga Barang',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Stok Barang',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 10.0),
            TextField(
              decoration: InputDecoration(
                hintText: 'Masukkan Stok Barang',
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
