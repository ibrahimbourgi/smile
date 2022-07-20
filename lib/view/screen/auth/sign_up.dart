import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smile/controller/auth/signup_controller.dart';
import 'package:smile/core/constant/theme.dart';
import 'package:smile/core/functions/alert_exit_app.dart';
import 'package:smile/core/functions/valid_input.dart';
import 'package:smile/view/widget/auth/body_text_auth.dart';
import 'package:smile/view/widget/auth/button_textfield_auth.dart';
import 'package:smile/view/widget/auth/form_textfield_auth.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);

  // final controller = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => SignUpControllerImp());
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
        body: WillPopScope(
          onWillPop: alertExitApp,
          child: GetBuilder<SignUpControllerImp>(
            builder: (controller) => Form(
              key: controller.formstate1,
              child: ListView(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 0.0, horizontal: 30),
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
                          // padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            '12'.tr,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Get.isDarkMode ? mainColor : mainColor),
                          ),
                        ),
                        // const SizedBox(
                        //   height: 10,
                        // ),
                        // const LogoAuth(),
                        // const SizedBox(
                        //   height: 0,
                        // ),
                        // const TitlTextAuth(
                        //   text: 'Sign Up to get Started!',
                        // ),

                        const SizedBox(
                          height: 10,
                        ),
                        BodyTextAuth(
                          text: '13'.tr,
                        ),
                        const SizedBox(
                          height: 30,
                        ),

                        //*************************LOgiin*********************+ */
                        TextFormeFieldAuth(
                          isNumber: false,
                          valid: ((val) {
                            return validInput(val!, 5, 100, "username");
                          }),
                          mycontroller: controller.username,
                          hintext: '14'.tr,
                          lable: '15'.tr,
                          iconData: Icons.person_outlined,
                          suffixIcon: const Text(''),
                          abscureText: false,
                        ),

                        const SizedBox(
                          height: 10,
                        ),
                        TextFormeFieldAuth(
                          isNumber: false,
                          valid: ((val) {
                            return validInput(val!, 5, 100, "email");
                          }),
                          mycontroller: controller.email,
                          hintext: '4'.tr,
                          lable: '5'.tr,
                          iconData: Icons.email_outlined,
                          suffixIcon: const Text(''),
                          abscureText: false,
                        ),

                        const SizedBox(
                          height: 10,
                        ),

                        TextFormeFieldAuth(
                          isNumber: true,
                          valid: ((val) {
                            return validInput(val!, 5, 100, "phone");
                          }),
                          mycontroller: controller.phone,
                          hintext: '16'.tr,
                          lable: '17'.tr,
                          iconData: Icons.phone_android_outlined,
                          suffixIcon: const Text(''),
                          abscureText: false,
                        ),

                        const SizedBox(
                          height: 15,
                        ),

                        GetBuilder<SignUpControllerImp>(
                          builder: (_) {
                            return TextFormeFieldAuth(
                              isNumber: false,
                              valid: ((val) {
                                return validInput(val!, 5, 100, "password");
                              }),
                              mycontroller: controller.password,
                              hintext: '6'.tr,
                              lable: '7'.tr,
                              iconData: Icons.lock_outline,
                              abscureText:
                                  controller.isVisibility ? false : true,
                              suffixIcon: IconButton(
                                onPressed: () {
                                  controller.visibility();
                                },
                                icon: controller.isVisibility
                                    ? const Icon(
                                        Icons.visibility_outlined,
                                        color: mainColor,
                                      )
                                    : const Icon(Icons.visibility_off_outlined,
                                        color: mainColor),
                              ),
                            );
                          },
                        ),

                        const SizedBox(
                          height: 10,
                        ),
                        ButtonTextFieldAuth(
                          text: '12'.tr,
                          onPressed: () {
                            controller.signUp();
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('18'.tr,
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 16, color: gray1)),
                      TextButton(
                        onPressed: () {
                          controller.goToLogin();
                          // Get.offAllNamed(AppRoute.login);
                        },
                        child: Text(
                          '1'.tr,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              color: gray1),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
