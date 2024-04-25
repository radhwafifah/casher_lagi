import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/editmember_controller.dart';

class EditMember extends GetView<EditMemberController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Member', style: TextStyle(color: Colors.black),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black,),
          onPressed: () {
            Get.offNamed('/kelola_member_petugas');
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
              'Nama',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 10.0),
            TextField(
              decoration: InputDecoration(
                hintText: 'Masukkan Nama Member',
                border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Nomor Telepon',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 10.0),
            TextField(
              decoration: InputDecoration(
                hintText: 'Masukkan Nomor Telepon',
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
