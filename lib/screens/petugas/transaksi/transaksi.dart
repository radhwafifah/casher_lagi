import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/transaksi_controller.dart';

class Transaksi extends GetView<TransaksiController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Transaksi', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black,),
            onPressed: () {
              Get.offNamed('/home_petugas');
            },
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: EdgeInsets.all(15),
          child: Center(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              InkWell(
                onTap: () {
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => KelolaPetugas()));
                },
                child: Center(
                  child: Container(
                    height: 50,
                    width: 300,
                    color: Color(0xFF64677A),
                    child: Center(
                      child: Text(
                        'Pilih Barang',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Jumlah'),
                            ],
                          ),
                          SizedBox(
                            width: 200,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                icon: Icon(Icons.remove_circle),
                                onPressed: () {},
                              ),
                              Text("1"),
                              IconButton(
                                icon: Icon(Icons.add_circle),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                    width: 200,
                    height: 40,
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    child: FilledButton(
                      style: FilledButton.styleFrom(
                        backgroundColor: Color(0xFF64677A),
                      ),
                      onPressed: () {
                        //Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                      },
                      child: Text(
                        "Simpan ke list pesan",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    )),
              ),
              SizedBox(
                height: 30,
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
              SizedBox(
                height: 50,
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
                          Container(
                              width: 150,
                              height: 35,
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: FilledButton(
                                style: FilledButton.styleFrom(
                                  backgroundColor: Color(0xFF64677A),
                                ),
                                onPressed: () {
                                  //Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                                },
                                child: Text(
                                  "Member",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                              )),
                        ],
                      ),
                      Spacer(),
                      Container(
                          width: 150,
                          height: 35,
                          margin: const EdgeInsets.symmetric(horizontal: 15),
                          child: FilledButton(
                            style: FilledButton.styleFrom(
                              backgroundColor: Color(0xFF64677A),
                            ),
                            onPressed: () {
                              //Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                            },
                            child: Text(
                              "Non-Member",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          )),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 50,),
              Center(
                child: Container(
                  width: 150,
                  height: 35,
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
              ),
            ]),
          ),
        ));
  }
}
