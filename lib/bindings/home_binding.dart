import 'package:get/get.dart';
import 'package:getx_sample/Lesson4_controller/shop_controller.dart';

import '../Lesson4_controller/home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    print('inject');
    //Get.put<HomeController>(HomeController(), permanent: true);
    Get.lazyPut(() => HomeController(), fenix: true);
    Get.lazyPut(() => ShopController(), fenix: true);
  }
}
