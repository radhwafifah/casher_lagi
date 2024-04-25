import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'common/bindings/app_bindings.dart';
import 'common/bindings/apppetugas_bindings.dart';
import 'routes/app_routes.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Cash-Er',
//       debugShowCheckedModeBanner: false,
//       home: Login(),
//     );
//   }
// }

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://pzockwlhdthsgnqoawzc.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InB6b2Nrd2xoZHRoc2ducW9hd3pjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTM3NjkzMTIsImV4cCI6MjAyOTM0NTMxMn0.MuUu3rVJAN3a3_vzoNojfnjRPZP-HTscjtfAcCP2t94'
  );

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Cash-Er',
      debugShowCheckedModeBanner: false,
      getPages: AppRoutes.routes,
      initialRoute: AppRoutes.initial,
      //initialBinding: AppPetugasBinding(),
      initialBinding: AppBinding(),
      defaultTransition: Transition.rightToLeft,
      transitionDuration: Get.defaultTransitionDuration,
    );
  }
}