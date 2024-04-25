import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/laporantransaksi_controller.dart';

class LaporanTransaksi extends GetView<LaporanTransaksiController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Laporan Transaksi', style: TextStyle(color: Colors.black)),
          actions: [
            IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                Get.off('/home_admin');
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
              Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Kasir 1',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      'Total Pembayaran : Rp. 18.000',
                    ),
                    Text(
                      'Senin, 27 Desember 2023', style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }
}
