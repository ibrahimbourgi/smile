import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smile/controller/onboarding_controller.dart';
import 'package:smile/core/constant/routes.dart';
import 'package:smile/core/constant/theme.dart';

class OnboardingButton extends GetView<ONBoardingControllerImp> {
  const OnboardingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MaterialButton(
          padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
          onPressed: () {
            controller.next();
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          color: mainColor,
          child: Text(
            'button1'.tr,
            style: const TextStyle(
                color: Colors.black,
                fontFamily: 'Philosopher',
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        MaterialButton(
          onPressed: () {
            Get.offAllNamed(AppRoute.mainScreen);
          },
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Text(
            'button2'.tr,
            style: const TextStyle(
                color: mainColor,
                fontFamily: 'Philosopher',
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
