import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_sample/controller/home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GetStorage storage = GetStorage();
  TextEditingController emailController = TextEditingController();
  HomeController homeController = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetStorage'),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(hintText: 'Email'),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  if (GetUtils.isEmail(emailController.text)) {
                    storage.write('email', emailController.text);
                    emailController.text = '';
                  } else {
                    Get.snackbar(
                      'Incorrect Email',
                      'Enter a valid email',
                      snackPosition: SnackPosition.BOTTOM,
                      backgroundColor: Colors.green,
                      colorText: Colors.white,
                      margin: EdgeInsets.only(bottom: 10),
                    );
                  }
                },
                child: Text('Submit')),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  homeController.updateEmail('${storage.read('email')}');
                  storage.listenKey('email', (_) {
                    print('Value Change');
                  });
                },
                child: Text('View')),
            Obx(() => Text(homeController.email.value)),
          ],
        ),
      ),
    );
  }
}
