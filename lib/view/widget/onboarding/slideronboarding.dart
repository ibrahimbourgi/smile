import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:smile/controller/onboarding_controller.dart';
import 'package:smile/core/constant/theme.dart';
import 'package:smile/data/datasource/static/static.dart';

class SliderOnboarding extends GetView<ONBoardingControllerImp> {
  const SliderOnboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pagecontroller,
        onPageChanged: (Value) {
          controller.onPageChange(Value);
        },
        itemCount: onboardinglist.length,
        itemBuilder: ((context, i) => Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 25),
                  child: Lottie.asset(
                    onboardinglist[i].image!,
                    height: 200,
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                Text(
                  onboardinglist[i].title!,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Get.isDarkMode ? mainColor : mainColor),
                ),
                const SizedBox(
                  height: 18,
                ),
                Text(
                  onboardinglist[i].body!,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Get.isDarkMode ? gray2 : gray2),
                ),
              ],
            )));
  }
}
