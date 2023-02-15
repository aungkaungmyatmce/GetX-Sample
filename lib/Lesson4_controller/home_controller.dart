import 'package:get/get.dart';

class HomeController extends GetxController {
  Rx<String> status = 'online'.obs;
  var followers = 50.obs;

  void updateStatus(String value) {
    status.value = value;
  }
}
