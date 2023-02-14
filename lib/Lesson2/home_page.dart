import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample/Lesson2/cart_page.dart';

class Lesson2Homepage extends StatelessWidget {
  const Lesson2Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text(
                'Navigate to Cart Page',
              ),
              onPressed: () {
                Get.to(CartPage());
              },
            ),

            // Remove current screen from stack and navigate to next screen
            ElevatedButton(
              child: Text('Navigate 2'),
              onPressed: () {
                Get.off(CartPage());
              },
            ),

            // Remove all screens from stack and navigate to next screen
            ElevatedButton(
              child: Text('Navigate 3'),
              onPressed: () {
                Get.off(CartPage());
              },
            ),

            //Passing data
            ElevatedButton(
              child: Text(
                'Passing Data',
              ),
              onPressed: () async {
                String status = await Get.to(CartPage(), arguments: 'AKM');
                print(status);
              },
            ),

            // Get.toNamed() to use this method, Screens are register in GetMaterialApp using GetPages
            // Get.offNamed(), Get.offAllNamed
            ElevatedButton(
              child: Text('Navigate toName'),
              onPressed: () {
                Get.toNamed('/cart');

                //If you want to pass data
                //Get.toNamed('/cart/Hello');
              },
            ),
          ],
        ),
      ),
    );
  }
}
