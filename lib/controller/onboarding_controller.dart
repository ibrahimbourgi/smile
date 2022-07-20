import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:smile/core/constant/routes.dart';
import 'package:smile/data/datasource/static/static.dart';

abstract class OnboardingController extends GetxController {
  next();
  onPageChange(int index);
}

class ONBoardingControllerImp extends OnboardingController {
  @override
  late PageController pagecontroller;
  int currentpage = 0;
  next() {
    currentpage++;

    if (currentpage > onboardinglist.length - 1) {
      Get.offAllNamed(AppRoute.login);
    } else {
      pagecontroller.animateToPage(currentpage,
          duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
    }
  }

  @override
  onPageChange(int index) {
    currentpage = index;
    update();
  }

  @override
  void onInit() {
    pagecontroller = PageController();
    super.onInit();
  }
}
