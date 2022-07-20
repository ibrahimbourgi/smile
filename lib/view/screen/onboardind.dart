import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smile/controller/onboarding_controller.dart';
import 'package:smile/view/widget/onboarding/dotonboarding.dart';
import 'package:smile/view/widget/onboarding/onboarding_button.dart';
import 'package:smile/view/widget/onboarding/slideronboarding.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ONBoardingControllerImp());
    return Scaffold(
      body: SafeArea(
          child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        padding: const EdgeInsets.all(10),
        child: Column(
          children: const [
            Expanded(
              flex: 3,
              child: SliderOnboarding(),
            ),

            //***********Dot*********+ */
            DotOnboarding(),
            SizedBox(
              height: 20,
            ),

            //***************Button************** */
            OnboardingButton()
          ],
        ),
      )),
    );
  }
}
