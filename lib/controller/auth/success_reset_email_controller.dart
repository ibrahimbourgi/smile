import 'package:get/get.dart';
import 'package:smile/core/constant/routes.dart';

abstract class SuccessResetEmailController extends GetxController {
  goToLogin();
}

class SuccessResetEmailControllerImp extends SuccessResetEmailController {
  @override
  goToLogin() {
    Get.offAllNamed(AppRoute.login);
  }
}
