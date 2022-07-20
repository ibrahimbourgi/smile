import 'package:get/get.dart';
import 'package:smile/controller/auth/main_controller.dart';

class MainBininding extends Bindings {
  @override
  void dependencies() {
    Get.put(MainController());
  }
}
