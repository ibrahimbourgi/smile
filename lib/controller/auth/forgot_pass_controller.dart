import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'package:smile/core/constant/routes.dart';

abstract class ForgetPassword extends GetxController {
  checkemail();
  goToVerifyCode();
}

class ForgetPasswordImp extends ForgetPassword {
  late TextEditingController email;

  @override
  checkemail() {}

  @override
  goToVerifyCode() {
    Get.offAllNamed(AppRoute.verifycode);
  }

  @override
  void onInit() {
    email = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();

    super.dispose();
  }
}
