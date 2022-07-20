import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:smile/core/constant/routes.dart';

abstract class ResetPasswordController extends GetxController {
  resetPasswort();
  goToSuccesResetPassword();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  late TextEditingController newpassword;
  late TextEditingController confpassword;

  @override
  resetPasswort() {}

  @override
  goToSuccesResetPassword() {
    Get.offAllNamed(AppRoute.succesresetpass);
  }

  @override
  void onInit() {
    newpassword = TextEditingController();
    confpassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    newpassword.dispose();
    confpassword.dispose();
    super.dispose();
  }
}
