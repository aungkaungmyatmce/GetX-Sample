import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample/Lesson4/shop_page.dart';
import 'Lesson4/home_page.dart';
import 'bindings/home_binding.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //initialBinding: HomeBinding(),
      getPages: [
        GetPage(name: '/home', page: () => HomePage()),
        GetPage(
            name: '/lesson4home',
            page: () => Lesson4HomePage(),
            binding: HomeBinding()),
        GetPage(name: '/shop', page: () => ShopPage(), binding: HomeBinding()),
      ],
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: HomePage(),

      initialRoute: '/home',
    );
  }
}
