// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:smile/core/binding/main_binding.dart';
import 'package:smile/core/binding/products_binding.dart';

import 'package:smile/view/screen/auth/main_screen/profile_screen.dart';
import 'package:smile/view/screen/auth/forgotpassword/forgot_password_screen.dart';
import 'package:smile/view/screen/auth/forgotpassword/reset_password_screen.dart';
import 'package:smile/view/screen/auth/forgotpassword/succes_reset_password.dart';
import 'package:smile/view/screen/auth/forgotpassword/verify_code_screen.dart';
import 'package:smile/view/screen/auth/login.dart';
import 'package:smile/view/screen/auth/main_screen/main_screen.dart';
import 'package:smile/view/screen/auth/sign_up.dart';
import 'package:smile/view/screen/auth/forgotpassword/succes_signup_screen.dart';
import 'package:smile/view/screen/onboardind.dart';

// Map<String, Widget Function(BuildContext)> routes = {
//   AppRoute.onBoarding: (Context) => const OnBoarding(),
//   AppRoute.login: (Context) => const LogIn(),
//   AppRoute.signup: (Context) => const SignUp(),
//   AppRoute.mainScreen: (Context) => const MainScreen(),
//   AppRoute.settingScreen: (Context) => const SettingScreen(),
//   AppRoute.forgotpass: (Context) => const ForgotPassword(),
//   AppRoute.verifycode: (Context) => const VerifyCode(),
//   AppRoute.resetpass: (Context) => const ResetPassword(),
//   AppRoute.succesresetpass: (Context) => const SuccesResetPassword(),
//   AppRoute.successignup: (Context) => const SuccesSgnUp(),
// };

class AppRoute {
  static const String onBoarding = '/onBoarding';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String settingScreen = '/settingScreen';
  static const String mainScreen = '/mainScreen';
  static const String forgotpass = '/forgotpass';
  static const String verifycode = '/verifycode';
  static const String resetpass = '/resetpass';
  static const String succesresetpass = '/succesresetpass';
  static const String successignup = '/successignup';
}

class AppRoutes {
  //initialRoute
  static const welcome = AppRoute.onBoarding;
  // static const mainSreen = AppRoute.mainScreen;

  // getPages

  static final routes = [
    GetPage(
      name: AppRoute.onBoarding,
      page: () => const OnBoarding(),
    ),

    //Logiiiiiiin
    GetPage(
      name: AppRoute.login,
      page: () => const LogIn(),
    ),

    //Signuppppppp
    GetPage(
      name: AppRoute.signup,
      page: () => SignUp(),
    ),

    //setting

    GetPage(
      name: AppRoute.settingScreen,
      page: () => ProfilScreen(),
      binding: ProductsBinding(),
    ),

    ///forgotpass
    GetPage(
      name: AppRoute.forgotpass,
      page: () => const ForgotPassword(),
    ),

    ///verifycode
    GetPage(
      name: AppRoute.verifycode,
      page: () => const VerifyCode(),
    ),

    ///resetpass
    GetPage(
      name: AppRoute.resetpass,
      page: () => const ResetPassword(),
    ),

    ///succesresetpass
    GetPage(
      name: AppRoute.succesresetpass,
      page: () => const SuccesResetPassword(),
    ),

    ///successignup
    GetPage(
      name: AppRoute.successignup,
      page: () => const SuccesSgnUp(),
    ),

    ///MainScreen
    GetPage(name: AppRoute.mainScreen, page: () => MainScreen(), bindings: [
      MainBininding(),
      ProductsBinding(),
    ]),
  ];
}
