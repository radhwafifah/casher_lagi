import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/databarang_controller.dart';

class PendataanBarang extends GetView<DataBarangController> {
  final DataBarangController dataBarangController = Get.put(DataBarangController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pendataan Barang',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            // Navigator.push(
            //     context, MaterialPageRoute(builder: (context) => Home()));
            Get.offNamed('home_admin');
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: [
            ...List.generate(
              controller.listProduk.length, 
              (index) => Padding(
                padding: EdgeInsets.all(10),
                child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: EdgeInsets.all(10.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(controller.listProduk[index]['namaProduk'], style: TextStyle(fontWeight: FontWeight.bold),),
                        SizedBox(
                          height: 5,
                        ),
                        Text(controller.listProduk[index]['harga'],),
                        SizedBox(
                          height: 5,
                        ),
                        Text(controller.listProduk[index]['stok']),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.delete),
                          color: Colors.red,
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.edit),
                          color: Colors.blue,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
                )
              )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.offNamed('/tambah_barang_admin');
        },
        backgroundColor: Color(0xFF64677A),
        child: Icon(
          Icons.add,
          color: Color(0xFFFFFFFF),
        ),
      ),
    );
  }
}
