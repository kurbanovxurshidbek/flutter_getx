import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:pattern_getx/pages/home_page.dart';
import 'package:pattern_getx/pages/main_page.dart';
import 'package:pattern_getx/pages/payment_page.dart';
import 'package:pattern_getx/pages/setting_home.dart';
import 'package:pattern_getx/services/bind_service.dart';
import 'package:pattern_getx/services/di_service.dart';

Future main() async{
  await DIService.init();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SettingPage(),
      //initialBinding: ControllersBinding(),
      // getPages: [
      //   GetPage(
      //     name: MainPage.id,
      //     page: () => MainPage(),
      //     binding: ControllersBinding(),
      //   ),
      // ],
    );
  }
}
