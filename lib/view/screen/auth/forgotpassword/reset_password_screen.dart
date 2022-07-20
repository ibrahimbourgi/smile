import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:smile/controller/auth/login_controller.dart';
import 'package:smile/controller/auth/reset_password_controller.dart';
import 'package:smile/core/constant/routes.dart';
import 'package:smile/core/constant/theme.dart';
import 'package:smile/data/datasource/static/static.dart';
import 'package:smile/view/widget/auth/body_text_auth.dart';
import 'package:smile/view/widget/auth/button_textfield_auth.dart';
import 'package:smile/view/widget/auth/form_textfield_auth.dart';
import 'package:smile/view/widget/auth/logo_auth.dart';
import 'package:smile/view/widget/auth/title_text_auth.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller =
        Get.put(ResetPasswordControllerImp());
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
                    'Reset Password',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Get.isDarkMode ? mainColor : mainColor),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                LogoAuth(),
                const SizedBox(
                  height: 10,
                ),
                const TitlTextAuth(
                  text: 'Change Password',
                ),

                // const SizedBox(
                //   height: 10,
                // ),
                // const BodyTextAuth(
                //   text:
                //       'Sign In with Email and Password \n OR Continu with Sotial Media',
                // ),
                const SizedBox(
                  height: 30,
                ),

                //*************************LOgiin*********************+ */
                TextFormeFieldAuth(
                  isNumber: false,
                  valid: ((val) {}),
                  mycontroller: controller.newpassword,
                  hintext: 'Enter your Email',
                  lable: 'New Password',
                  iconData: Icons.email_outlined,
                  suffixIcon: Text(''),
                  abscureText: false,
                ),

                const SizedBox(
                  height: 15,
                ),

                TextFormeFieldAuth(
                  isNumber: false,
                  valid: ((val) {}),
                  mycontroller: controller.confpassword,
                  hintext: 'Enter your Password',
                  lable: 'Confirm Password',
                  iconData: Icons.lock_outlined,
                  suffixIcon: const Text(''),
                  abscureText: true,
                ),
                const SizedBox(
                  height: 70,
                ),

                ButtonTextFieldAuth(
                  text: 'Add',
                  onPressed: () {
                    controller.goToSuccesResetPassword();
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
