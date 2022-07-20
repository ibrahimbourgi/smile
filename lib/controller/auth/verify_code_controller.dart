import 'package:get/get.dart';
import 'package:smile/core/constant/routes.dart';

abstract class VerifyController extends GetxController {
  checkCode();
  goToRsetPassword();
}

class VerifyControllerImp extends VerifyController {
  late String verifycode;

  @override
  checkCode() {}

  @override
  goToRsetPassword() {
    Get.offAllNamed(AppRoute.successignup);
  }

  @override
  void onInit() {
    super.onInit();
  }
}
