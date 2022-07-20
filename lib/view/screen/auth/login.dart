import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smile/controller/auth/login_controller.dart';
import 'package:smile/core/constant/theme.dart';
import 'package:smile/core/functions/alert_exit_app.dart';
import 'package:smile/core/functions/valid_input.dart';
import 'package:smile/view/widget/auth/button_textfield_auth.dart';
import 'package:smile/view/widget/auth/form_textfield_auth.dart';
import 'package:smile/view/widget/auth/logo_auth.dart';
import 'package:smile/view/widget/auth/title_text_auth.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => LogInControllerImp());
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
        child: GetBuilder<LogInControllerImp>(
            builder: ((controller) => Form(
                  key: controller.formstate,
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
                              padding: const EdgeInsets.only(top: 0),
                              child: Text(
                                '1'.tr,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color:
                                        Get.isDarkMode ? mainColor : mainColor),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const LogoAuth(),
                            const SizedBox(
                              height: 20,
                            ),
                            TitlTextAuth(
                              text: '2'.tr,
                            ),

                            const SizedBox(
                              height: 20,
                            ),
                            // BodyTextAuth(
                            //   text: '3'.tr,
                            // ),
                            // const SizedBox(
                            //   height: 15,
                            // ),

                            //*************************LOgiin*********************+ */
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
                              height: 15,
                            ),

                            GetBuilder<LogInControllerImp>(
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
                                        : const Icon(
                                            Icons.visibility_off_outlined,
                                            color: mainColor),
                                  ),
                                );
                              },
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            //*****************forgot Password********************* */
                            InkWell(
                              onTap: (() {
                                controller.goToForgetPassword();
                              }),
                              child: Text('8'.tr,
                                  textAlign: TextAlign.end,
                                  style: const TextStyle(
                                      fontSize: 17,
                                      decoration: TextDecoration.underline,
                                      color: gray2,
                                      fontWeight: FontWeight.bold)),
                            ),

                            const SizedBox(
                              height: 20,
                            ),
                            //************************Button laogin **************************+++ */
                            ButtonTextFieldAuth(
                              text: '1'.tr,
                              onPressed: () {
                                controller.login();
                              },
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            //****************Divider******************************** */
                            Row(
                              children: [
                                const Expanded(
                                    child: Divider(
                                  color: gray2,
                                )),
                                Container(
                                  margin:
                                      const EdgeInsets.only(right: 8, left: 8),
                                  child: Text(
                                    '9'.tr,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: gray2),
                                  ),
                                ),
                                const Expanded(
                                    child: Divider(
                                  color: gray2,
                                )),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                    onTap: () {},
                                    child: Image.asset(
                                      'assets/images/facebook.png',
                                      width: 50,
                                      height: 50,
                                    )),
                                const SizedBox(
                                  width: 20,
                                ),
                                InkWell(
                                    onTap: () {},
                                    child: Image.asset(
                                      'assets/images/google.png',
                                      width: 50,
                                      height: 50,
                                    )),
                              ],
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
                          Text('10'.tr,
                              textAlign: TextAlign.center,
                              style:
                                  const TextStyle(fontSize: 16, color: gray1)),
                          TextButton(
                            onPressed: () {
                              controller.gotoSignUp();
                            },
                            child: Text(
                              '11'.tr,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline,
                                  color: gray1),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ))),
      ),
    );
  }
}
