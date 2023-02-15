import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample/Lesson4/home_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('fdf'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/lesson4home');
                },
                child: Text('Navigate to Lesson4home')),
          ],
        ),
      ),
    );
  }
}
