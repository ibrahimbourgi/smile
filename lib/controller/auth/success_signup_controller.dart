import 'package:get/get.dart';
import 'package:smile/core/constant/routes.dart';

abstract class SuccessSignUpController extends GetxController {
  goToLogin();
}

class SuccessSignUpControllerImp extends SuccessSignUpController {
  @override
  goToLogin() {
    Get.offAllNamed(AppRoute.login);
  }
}
