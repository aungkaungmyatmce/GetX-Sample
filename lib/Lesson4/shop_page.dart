import 'package:flutter/material.dart';
import 'package:getx_sample/Lesson4_controller/home_controller.dart';
import 'package:get/get.dart';

import '../Lesson4_controller/shop_controller.dart';

class ShopPage extends GetView<ShopController> {
  ShopPage({Key? key}) : super(key: key);
  HomeController homeController = Get.find<HomeController>();
  // ShopController shopController = Get.find<ShopController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lesson 4'),
      ),
      body: Obx(
        () => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(homeController.status.value),
              Text(controller.cart.value.toString()),
              ElevatedButton(
                onPressed: () {
                  controller.updateCart(10);
                },
                child: Text('Change cart value'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
