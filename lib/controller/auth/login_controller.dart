import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:smile/core/constant/routes.dart';

abstract class LogInController extends GetxController {
  login();
  gotoSignUp();
  goToForgetPassword();
}

class LogInControllerImp extends LogInController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController email;
  late TextEditingController password;
  bool isVisibility = false;
  @override
  login() {
    // Get.toNamed(AppRoute.home);
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      // print("valid");
      Get.offAllNamed(AppRoute.mainScreen);
    } else {
      print("Not valid");
    }
  }

  @override
  gotoSignUp() {
    Get.toNamed(AppRoute.signup);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToForgetPassword() {
    Get.toNamed(AppRoute.forgotpass);
  }

  void visibility() {
    isVisibility = !isVisibility;
    update();
  }
}
