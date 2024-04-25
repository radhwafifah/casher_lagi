import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/loginp_controller.dart';

class LoginPetugas extends GetView<LoginPetugasController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(20.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'MASUK',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 50),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      "Email",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF777777)),
                    ),
                    const SizedBox(height: 8),
                    Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: TextFormField(
                          controller: controller.email,
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "Masukkan email",
                              hintStyle: TextStyle(
                                  fontSize: 15, color: Color(0xFFB4B4B4)),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 17)),
                        )),
                    SizedBox(height: 20.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          "Password",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF777777)),
                        ),
                        const SizedBox(height: 8),
                        Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: TextFormField(
                              controller: controller.password,
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Masukkan password",
                                  hintStyle: TextStyle(
                                      fontSize: 15, color: Color(0xFFB4B4B4)),
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 17)),
                            )),
                        SizedBox(height: 20.0),
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
                                await controller.loginPetugas();
                              },
                              child: Text(
                                "Masuk",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            )),
                      ],
                    ),
                  ]),
            ])));
  }
}
