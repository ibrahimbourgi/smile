import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smile/controller/auth/forgot_pass_controller.dart';
import 'package:smile/core/constant/routes.dart';
import 'package:smile/core/constant/theme.dart';
import 'package:smile/view/widget/auth/body_text_auth.dart';
import 'package:smile/view/widget/auth/button_textfield_auth.dart';
import 'package:smile/view/widget/auth/form_textfield_auth.dart';
import 'package:smile/view/widget/auth/logo_auth.dart';
import 'package:smile/view/widget/auth/title_text_auth.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ForgetPasswordImp controller = Get.put(ForgetPasswordImp());
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
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    '27'.tr,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Get.isDarkMode ? mainColor : mainColor),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const LogoAuth(),
                const SizedBox(
                  height: 30,
                ),
                TitlTextAuth(
                  text: '19'.tr,
                ),

                const SizedBox(
                  height: 10,
                ),
                BodyTextAuth(
                  text: '28'.tr,
                ),
                const SizedBox(
                  height: 50,
                ),

                //*************************LOgiin*********************+ */
                TextFormeFieldAuth(
                  isNumber: false,
                  valid: ((val) {}),
                  mycontroller: controller.email,
                  hintext: '4'.tr,
                  lable: '5'.tr,
                  iconData: Icons.email_outlined,
                  suffixIcon: const Text(''),
                  abscureText: false,
                ),

                const SizedBox(
                  height: 50,
                ),

//************************Button laogin **************************+++ */
                ButtonTextFieldAuth(
                  text: '22'.tr,
                  onPressed: () {
                    controller.goToVerifyCode();
                  },
                ),

                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Get.toNamed(AppRoute.login);
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
