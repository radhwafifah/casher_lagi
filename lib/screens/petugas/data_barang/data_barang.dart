import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/databarang_controller.dart';

class DataBarang extends GetView<DataBarangPController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Data Barang',
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
            Get.offNamed('/home_petugas');
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
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
                      Text('Milo', style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Rp. 5.000'),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Stok : 22'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
