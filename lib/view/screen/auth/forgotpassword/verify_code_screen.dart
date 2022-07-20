import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:smile/controller/auth/verify_code_controller.dart';
import 'package:smile/core/constant/routes.dart';
import 'package:smile/core/constant/theme.dart';
import 'package:smile/view/widget/auth/body_text_auth.dart';
import 'package:smile/view/widget/auth/logo_auth.dart';
import 'package:smile/view/widget/auth/title_text_auth.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VerifyControllerImp controller = Get.put(VerifyControllerImp());
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
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    '29'.tr,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: mainColor),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const LogoAuth(),
                const SizedBox(
                  height: 50,
                ),
                TitlTextAuth(
                  text: '30'.tr,
                ),

                const SizedBox(
                  height: 10,
                ),
                // const BodyTextAuth(
                //   text: '',
                // ),

                BodyTextAuth1(text1: '31'.tr, text2: '32'.tr, text: ''),

                const SizedBox(
                  height: 100,
                ),
                OtpTextField(
                  disabledBorderColor: Colors.green,
                  focusedBorderColor: Colors.white,
                  fieldWidth: 50,
                  borderRadius: BorderRadius.circular(20),
                  numberOfFields: 5,
                  borderColor: mainColor,
                  cursorColor: mainColor, fillColor: mainColor,
                  enabledBorderColor: mainColor,

                  //set to true to show as box or false to show as dash
                  showFieldAsBox: true,
                  //runs when a code is typed in
                  onCodeChanged: (String code) {
                    //handle validation or checks here
                  },
                  //runs when every textfield is filled
                  onSubmit: (String verificationCode) {
                    controller.goToRsetPassword();
                    // showDialog(
                    //     context: context,
                    //     builder: (context) {
                    //       return AlertDialog(
                    //         title: Text("Verification Code"),
                    //         content: Text('Code entered is $verificationCode'),
                    //       );
                    //     });
                  }, // end onSubmit
                ),

                //*************************LOgiin*********************+ */
              ],
            ),
          ),
          const SizedBox(
            height: 10,
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
