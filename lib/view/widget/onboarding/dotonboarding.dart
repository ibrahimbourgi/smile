import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:smile/controller/onboarding_controller.dart';
import 'package:smile/core/constant/theme.dart';
import 'package:smile/data/datasource/static/static.dart';

class DotOnboarding extends StatelessWidget {
  const DotOnboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ONBoardingControllerImp>(
        builder: ((controller) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                  onboardinglist.length,
                  (index) => AnimatedContainer(
                    margin: const EdgeInsets.all(5),
                    duration: const Duration(milliseconds: 900),
                    height: controller.currentpage == index ? 10 : 10,
                    width: controller.currentpage == index ? 20 : 10,
                    decoration: BoxDecoration(
                        color: mainColor,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                )
              ],
            )));
  }
}
