import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/tambahbarang_controller.dart';

class TambahBarang extends GetView<TambahBarangController> {
  final TambahBarangController controller = Get.put(TambahBarangController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tambah Barang'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Get.off('/data_barang_admin');
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
              controller: controller.namaProduk,
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
              controller: controller.harga,
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
              controller: controller.stok,
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
                  onPressed: () async {
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                    print('loading');
                    await controller.tambahBarang();
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
