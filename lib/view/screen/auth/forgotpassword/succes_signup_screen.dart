import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:smile/controller/auth/success_signup_controller.dart';
import 'package:smile/core/constant/routes.dart';
import 'package:smile/core/constant/theme.dart';
import 'package:smile/view/widget/auth/body_text_auth.dart';
import 'package:smile/view/widget/auth/button_textfield_auth.dart';
import 'package:smile/view/widget/auth/logo_auth.dart';
import 'package:smile/view/widget/auth/title_text_auth.dart';

class SuccesSgnUp extends StatelessWidget {
  const SuccesSgnUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SuccessSignUpControllerImp controller =
        Get.put(SuccessSignUpControllerImp());
    return Scaffold(
      backgroundColor: mainColor,
      // appBar: AppBar(
      //     centerTitle: true,
      //     flexibleSpace: Container(
      //       decoration: const BoxDecoration(
      //         image: DecorationImage(
      //           image: AssetImage("assets/images/background.jpg"),
      //           fit: BoxFit.cover,
      //         ),
      //       ),
      //     )),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 30),
            height: 610,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/background.jpg"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                )),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 50),
                  child: Text(
                    '23'.tr,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Get.isDarkMode ? mainColor : mainColor),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                // const LogoAuth(),
                // const SizedBox(
                //   height: 10,
                // ),

                Container(
                  height: 200,
                  width: double.infinity,
                  child: Stack(
                    alignment: AlignmentDirectional.topCenter,
                    clipBehavior: Clip.none,
                    children: [
                      // Card(
                      //   color: mainColor,
                      //   child: Column(
                      //     mainAxisAlignment: MainAxisAlignment.center,
                      //     children: [
                      //       Padding(
                      //         padding:
                      //             const EdgeInsets.fromLTRB(100, 100, 100, 10),
                      //         child: BodyTextAuth(
                      //           text: '24'.tr,
                      //         ),
                      //       ),
                      //       Padding(
                      //         padding:
                      //             const EdgeInsets.fromLTRB(100, 0, 100, 0),
                      //         child: BodyTextAuth(
                      //           text: '25'.tr,
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),

                      Positioned(
                        // top: -40,
                        child: Container(
                          padding: const EdgeInsets.all(0),
                          decoration: const BoxDecoration(
                              // color: gray1,
                              // border: Border.all(
                              //   color: mainColor,
                              //   width: 0,
                              // ),
                              shape: BoxShape.circle),
                          child: Lottie.asset('assets/lottie/success.json'),
                          //  const Icon(
                          //   Icons.gpp_good,
                          //   size: 80,
                          //   color: mainColor,
                          // ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: BodyTextAuth0(
                    text0: '24'.tr,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  child: BodyTextAuth(
                    text: '25'.tr,
                  ),
                ),

                //*************************LOgiin*********************+ */
                const SizedBox(
                  height: 100,
                ),
                ButtonTextFieldAuth(
                  text: '26'.tr,
                  onPressed: () {
                    Get.toNamed(AppRoute.login);
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              // Get.toNamed(AppRoute.login);
              controller.goToLogin();
            },
            child: Container(
              padding: const EdgeInsets.all(6),
              decoration:
                  const BoxDecoration(shape: BoxShape.circle, color: gray1),
              child: const Icon(Icons.close_rounded, color: mainColor),
            ),
          ),
        ],
      ),
    );
  }
}
