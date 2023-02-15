import 'package:get/get.dart';

class HomeController extends GetxController {
  RxString status = 'online'.obs;
  RxInt followers = 50.obs;

  void updateStatus(String newStatus) {
    status.value = newStatus;
    update(); // Just like NotifyListeners in Provider, it will update value in GetBuilder widget
  }

  void updateSpecificStatus(String newStatus) {
    status.value = newStatus;
    update([
      'status_widget'
    ]); // Just like NotifyListeners in Provider, it will update value in GetBuilder widget
  }

  void updateFollowers(int count) {
    followers.value = count;
    // Just like NotifyListeners in Provider, it will update value in GetBuilder widget
  }

  @override
  void onInit() {
    /// This function is called everytime status changes
    // ever(status, (callback) {
    //   print('Status value changes');
    // });
    everAll([status, followers], (_) {
      print('Status or follower value changes');
    });

    /// This function is called only once when status changes for the first time
    once(status, (callback) {
      print('Status changes and function called only once');
    });

    /// Function is called everytime user stops typing for a specific duration (1sec in ths example)
    debounce(status, (callback) {
      print('Debounce worker');
    }, time: Duration(seconds: 1));

    super.onInit();
  }
}
