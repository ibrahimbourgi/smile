import 'package:flutter/material.dart';
import 'package:get/get.dart';

const Color mainColor = Color(0xffFFC102);
const Color darkGreyClr = Color.fromARGB(255, 32, 32, 32);
const Color pinkClr = Color.fromARGB(255, 253, 101, 0);
const Color gray1 = Color.fromARGB(255, 62, 62, 62);
const Color gray2 = Color.fromARGB(255, 98, 98, 98);
const Color kCOlor3 = Color.fromARGB(255, 21, 21, 21);
const Color kCOlor4 = Color(0xff738B71);
const Color kCOlor5 = Color(0xff6D454D);
const Color darkSettings = Color(0xff6132e4);
const Color accountSettings = Color(0xff73bc65);
const Color logOutSettings = Color(0xff5f95ef);
const Color notiSettings = Color(0xffdf5862);
const Color languageSettings = Color(0xffCB256C);

// class ThemesApp {
//   static final light = ThemeData(
//     primaryColor: mainColor,
//     backgroundColor: Colors.white,
//     brightness: Brightness.light,
//   );

//   static final dark = ThemeData(
//     primaryColor: darkGreyClr,
//     backgroundColor: darkGreyClr,
//     brightness: Brightness.dark,
//   );
// }

ThemeData themeEnglish = ThemeData(
  fontFamily: 'Philosopher',
  textTheme: TextTheme(
    headline1: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 15,
        color: Get.isDarkMode ? mainColor : mainColor),
    headline2: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 10,
        color: Get.isDarkMode ? gray1 : gray1),
    bodyText1: TextStyle(
        height: 2,
        fontWeight: FontWeight.bold,
        fontSize: 15,
        color: Get.isDarkMode ? gray1 : gray1),
    bodyText2: const TextStyle(
        height: 1.5,
        fontWeight: FontWeight.normal,
        fontSize: 10,
        color: Color.fromARGB(255, 120, 119, 119)),
  ),
);

ThemeData themeArabic = ThemeData(
  fontFamily: 'Cairo',
  textTheme: TextTheme(
    headline1: const TextStyle(
        fontWeight: FontWeight.bold, fontSize: 10, color: mainColor),
    headline2: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 10,
        color: Get.isDarkMode ? gray1 : gray1),
    bodyText1: TextStyle(
        height: 1.5,
        fontWeight: FontWeight.bold,
        fontSize: 10,
        color: Get.isDarkMode ? gray1 : gray1),
    bodyText2: const TextStyle(
        height: 1.5,
        fontWeight: FontWeight.normal,
        fontSize: 10,
        color: Color.fromARGB(255, 120, 119, 119)),
  ),
);
ThemeData themeDeutsh = ThemeData(
  fontFamily: 'Philosopher',
  textTheme: TextTheme(
    headline1: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: Get.isDarkMode ? mainColor : mainColor),
    headline2: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 26,
        color: Get.isDarkMode ? gray1 : gray1),
    bodyText1: TextStyle(
        height: 2,
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: Get.isDarkMode ? gray1 : gray1),
    bodyText2: const TextStyle(
        height: 1.5,
        fontWeight: FontWeight.normal,
        fontSize: 18,
        color: Color.fromARGB(255, 120, 119, 119)),
  ),
);
ThemeData themeFrench = ThemeData(
  fontFamily: 'Philosopher',
  textTheme: TextTheme(
    headline1: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25,
        color: Get.isDarkMode ? mainColor : mainColor),
    headline2: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 26,
        color: Get.isDarkMode ? gray1 : gray1),
    bodyText1: TextStyle(
        height: 2,
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: Get.isDarkMode ? gray1 : gray1),
    bodyText2: const TextStyle(
        height: 1.5,
        fontWeight: FontWeight.normal,
        fontSize: 18,
        color: Color.fromARGB(255, 120, 119, 119)),
  ),
);
