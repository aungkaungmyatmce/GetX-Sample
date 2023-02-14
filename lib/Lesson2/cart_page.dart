import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Text(Get.arguments),
            //Text(Get.parameters['passingVariable']!),
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text('Back to Home Page')),
            ElevatedButton(
                onPressed: () {
                  Get.back(result: 'Hello');
                },
                child: Text('Passing data Back to Home Page')),
          ],
        ),
      ),
    );
  }
}
