import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smile/core/constant/theme.dart';
import 'package:smile/core/services/services.dart';

class LocalController extends GetxController {
//  String selectedGender;
//       final List<String> gender = ["Male", "Female"];

//       String select;
//       void onClickRadioButton(value) {
//       print(value);
//       select = value;
//       update();
//       }
//      }

  Locale? language;

  MyServices myServices = Get.find();
  ThemeData appThem = themeEnglish;

  changelang(String langcode) {
    Locale locale = Locale(langcode);
    myServices.sharedPreferences.setString('lang', langcode);

    // appThem = langcode == "ar" ? themeArabic : themeEnglish;
    if (langcode == "ar") {
      appThem = themeArabic;
    } else if (langcode == "en") {
      appThem = themeEnglish;
    } else if (langcode == "de") {
      appThem = themeDeutsh;
    } else if (langcode == "fr") {
      appThem = themeFrench;
    }
    Get.changeTheme(appThem);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedlang = myServices.sharedPreferences.getString('lang');

    if (sharedlang == "ar") {
      language = const Locale("ar");
      appThem = themeArabic;
    } else if (sharedlang == "en") {
      language = const Locale("en");
      appThem = themeEnglish;
    } else if (sharedlang == "de") {
      language = const Locale("de");
      appThem = themeDeutsh;
    } else if (sharedlang == "fr") {
      appThem = themeFrench;
      language = const Locale("fr");
      appThem = themeFrench;
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
      appThem = themeEnglish;
    }

    super.onInit();
  }
}
