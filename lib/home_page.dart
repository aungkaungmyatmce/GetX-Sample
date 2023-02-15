import 'package:flutter/material.dart';
import 'package:getx_sample/controller/home_controller.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('State Management'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX<HomeController>(
              builder: (controller) =>
                  Text(homeController.followers.value.toString()),
            ),
            Obx(
              () => Text(homeController.followers.value.toString()),
            ),
            GetBuilder<HomeController>(
              init: HomeController(),
              builder: (controller) =>
                  Text('User Status: ${controller.status}'),
            ),
            GetBuilder<HomeController>(
              id: 'status_widget',
              builder: (controller) =>
                  Text('User Status: ${controller.status}'),
            ),
            ElevatedButton(
                onPressed: () {
                  homeController.updateStatus('offline');
                },
                child: Text('Update Status')),
          ],
        ),
      ),
    );
  }
}
