import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_sample/Lesson4/shop_page.dart';
import 'package:getx_sample/Lesson4_controller/shop_controller.dart';

import '../Lesson4_controller/home_controller.dart';

class Lesson4HomePage extends StatelessWidget {
  Lesson4HomePage({Key? key}) : super(key: key);

  HomeController homeController = Get.find<HomeController>();
  //ShopController shopController = Get.find<ShopController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lesson4'),
      ),
      body: Obx(
        () => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(homeController.status.value),
              // Text(shopController.cart.value.toString()),
              ElevatedButton(
                  onPressed: () {
                    Get.to(ShopPage());
                  },
                  child: Text('Navigate to Shop')),
              ElevatedButton(
                  onPressed: () {
                    homeController.updateStatus(
                        homeController.status.value == 'online'
                            ? 'offline'
                            : 'online');
                  },
                  child: Text('Update Status')),
            ],
          ),
        ),
      ),
    );
  }
}
