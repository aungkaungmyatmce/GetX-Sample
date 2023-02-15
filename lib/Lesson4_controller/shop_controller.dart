import 'package:get/get.dart';

class ShopController extends GetxController {
  // Rx<String> cart = 'cart'.obs;
  var cart = 50.obs;

  void updateCart(int value) {
    cart.value = value;
  }

  @override
  void onInit() {
    print('Shop con init');
    super.onInit();
  }
}
