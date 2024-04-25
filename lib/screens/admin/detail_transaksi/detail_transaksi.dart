import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/detailtransaksi_controller.dart';

class DetailTransaksi extends GetView<DetailTransaksiController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Detail Transaksi'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Get.off('/laporan_transaksi_admin');
            },
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                children: [
                  Text("Waktu Transaksi :", style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(width: 5,),
                  Text("Senin, 27 Desember 2023")
                ],
              ),
              Row(
                children: [
                  Text("Nomor Kasir :", style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(width: 5,),
                  Text("Kasir 1")
                ],
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  Text("Rincian Transaksi", style: TextStyle(fontWeight: FontWeight.bold),),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Table(
                border: TableBorder.all(),
                children: [
                  TableRow(
                    children: [
                      TableCell(child: Center(child: Text('Barang'))),
                      TableCell(child: Center(child: Text('Harga'))),
                      TableCell(child: Center(child: Text('Jumlah'))),
                      TableCell(child: Center(child: Text('Total'))),
                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(child: Center(child: Text('Milo'))),
                      TableCell(child: Center(child: Text('5.000'))),
                      TableCell(child: Center(child: Text('1'))),
                      TableCell(child: Center(child: Text('5000'))),
                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(child: Center(child: Text('Dancow'))),
                      TableCell(child: Center(child: Text('7.000'))),
                      TableCell(child: Center(child: Text('2'))),
                      TableCell(child: Center(child: Text('14000'))),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 5,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Total Harga'),
                        ],
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Text("Rp. 19000"),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Diskon'),
                        ],
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Text("Rp. 1000"),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Total Pembayaran'),
                        ],
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Text("Rp. 18000"),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Uang'),
                        ],
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Text("Rp. 20000"),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Kembalian'),
                        ],
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Text("Rp. 2000"),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          ),
    );
  }
}