import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:smile/core/constant/routes.dart';

abstract class SignUpController extends GetxController {
  signUp();
  goToLogin();
}

class SignUpControllerImp extends SignUpController {
  GlobalKey<FormState> formstate1 = GlobalKey<FormState>();
  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password;
  bool isVisibility = false;
  @override
  signUp() {
    // Get.toNamed(AppRoute.chekemailsignup);
    var formdata = formstate1.currentState;
    if (formdata!.validate()) {
      Get.toNamed(AppRoute.verifycode);
    } else {
      print("Not valid");
    }
  }

  @override
  goToLogin() {
    Get.offAndToNamed(AppRoute.login);
  }

  @override
  void onInit() {
    username = TextEditingController();

    email = TextEditingController();
    phone = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    username.dispose();
    email.dispose();
    phone.dispose();
    password.dispose();
    super.dispose();
  }

  void visibility() {
    isVisibility = !isVisibility;
    update();
  }
}
