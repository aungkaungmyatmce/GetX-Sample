import 'package:get/get.dart';

class HomeController extends GetxController {
  var email = ''.obs;

  void updateEmail(newEmail) {
    email.value = newEmail;
  }
}
