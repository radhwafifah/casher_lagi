import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/kelolapetugas_controller.dart';

class KelolaPetugas extends GetView<KelolaPetugasController> {
  final KelolaPetugasController createController = Get.put(KelolaPetugasController());
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Kelola Petugas',
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
            Get.offNamed('/home_admin');
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            ...List.generate(
              controller.petugas.length, 
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
                        Text(controller.petugas[index]['nomorKasir'], 
                        style: TextStyle(fontWeight: FontWeight.bold),),
                        SizedBox(
                          height: 5,
                        ),
                        Text(controller.petugas[index]['emailKasir']),
                        SizedBox(
                          height: 5,
                        ),
                        Text(controller.petugas[index]['namaKasir']),
                        SizedBox(
                          height: 5,
                        ),
                        Text(controller.petugas[index]['password']),
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
              ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigator.push(
          //       context, MaterialPageRoute(builder: (context) => TambahPetugas()));
          Get.offNamed('/tambah_petugas_admin');
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
