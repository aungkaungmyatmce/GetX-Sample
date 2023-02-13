import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Lesson1HomePage extends StatelessWidget {
  Lesson1HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('dfdf');
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// Show snckbar
            ElevatedButton(
              onPressed: () {
                //Get.closeCurrentSnackbar();
                Get.closeAllSnackbars();
                Get.snackbar(
                  'This is snackbar',
                  'From getX',
                  snackPosition: SnackPosition.BOTTOM,
                  colorText: Colors.black,
                  backgroundColor: Colors.blueAccent,
                  borderRadius: 30,
                  margin: EdgeInsets.all(10),
                  icon: const Icon(
                    Icons.check,
                    color: Colors.white,
                  ),
                  mainButton: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'My cart',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  padding: const EdgeInsets.all(20),
                );
              },
              child: const Text('Show snackbar'),
            ),

            ///Show Dialog
            ElevatedButton(
              onPressed: () {
                Get.defaultDialog(
                  title: 'Are you sure?',
                  content: Text('Do you want to delete'),
                  backgroundColor: Colors.grey,
                  textConfirm: 'Yes',
                  textCancel: 'No',
                  confirmTextColor: Colors.white,
                  onConfirm: () {},
                  onCancel: () {},
                  barrierDismissible: true,
                );
              },
              child: const Text('Show Dialog'),
            ),

            ///Show bottom sheet
            ElevatedButton(
              onPressed: () {
                Get.bottomSheet(
                    Container(
                      height: 500,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircularProgressIndicator(),
                          Icon(
                            Icons.message,
                            size: 50,
                          ),
                        ],
                      ),
                    ),
                    backgroundColor: Colors.grey,
                    isDismissible: true,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ));
              },
              child: const Text('Show bottom sheet'),
            ),
          ],
        ),
      ),
    );
  }
}
