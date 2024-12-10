import 'package:get/get.dart';

import 'logic.dart';

class MainScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainScreenLogic());
  }
}
