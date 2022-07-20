// ignore_for_file: prefer_const_constructors

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:smile/core/constant/theme.dart';
import 'package:smile/core/localization/changelocal.dart';

import '../../../widget/radio__button.dart';

class ProfilScreen extends GetView<LocalController> {
  // final controller = Get.find<LocalController>();
  //  LocalController  controller = Get.put(LocalController());

  const ProfilScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/background.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: ListView(children: [
        Column(
          children: [
            ///Row top
            const SizedBox(height: 10),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.sunny)),
            ]),

            ///Avatar image with name ana telel and email
            ///
            Container(
              height: 150,
              width: 150,
              alignment: Alignment.center,
              child: Stack(
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/card.jpg'),
                            fit: BoxFit.fill)),
                  ),
                  Container(
                      height: 30,
                      width: 30,
                      margin: const EdgeInsets.only(top: 100, left: 120),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: mainColor,
                      ),
                      alignment: Alignment.bottomRight,
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.camera_alt_outlined,
                            size: 16,
                          ))),
                ],
              ),
            ),
            const Text(
              'Ibrahim Bourgi',
              style: TextStyle(
                  color: gray2, fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const Text(
              'bourgi_u@hotmail.com',
              style: TextStyle(
                  color: gray2, fontWeight: FontWeight.bold, fontSize: 15),
            ),
            const SizedBox(
              height: 30,
            ),

            ///Listview********************

            InkWell(
              onTap: () {
                showModalBottomSheet(
                    // backgroundColor: Colors.amber,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                    ),
                    context: context,
                    builder: (context) {
                      return buttonSheet();
                    });
              },
              child: Expanded(
                child: Container(
                  margin: const EdgeInsets.only(right: 10, left: 10),
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  alignment: Alignment.centerLeft,
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: mainColor,
                        width: 1,
                      ),
                      color: Colors.transparent),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.only(top: 2),
                          child: const Icon(
                            Icons.language_outlined,
                            size: 30,
                            color: mainColor,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 6,
                        child: Container(
                          color: Colors.transparent,
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            'change Language',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          padding: const EdgeInsets.only(left: 20),
                          child: const Icon(
                            Icons.chevron_right,
                            size: 30,
                            color: mainColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],

          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Text(
          //       '1'.tr,
          //       textAlign: TextAlign.center,
          //       style: const TextStyle(
          //           fontFamily: 'Philosopher',
          //           fontSize: 20,
          //           fontWeight: FontWeight.bold),
          //     ),
          //     const SizedBox(
          //       height: 20,
          //     ),
          //     ButtonLanguage(
          //       buttontext: 'en',
          //       onPressed: () {
          //         controller.changelang('en');
          //         Get.toNamed(AppRoute.onBoarding);
          //       },
          //     ),
          //     const SizedBox(
          //       height: 20,
          //     ),
          //     ButtonLanguage(
          //       buttontext: 'Ar',
          //       onPressed: () {
          //         controller.changelang('ar');
          //         Get.toNamed(AppRoute.onBoarding);
          //       },
          //     ),
          //     ButtonLanguage(
          //       buttontext: 'De',
          //       onPressed: () {
          //         controller.changelang('de');
          //         Get.toNamed(AppRoute.onBoarding);
          //       },
          //     ),
          //     ButtonLanguage(
          //       buttontext: 'Fr',
          //       onPressed: () {
          //         controller.changelang('fr');
          //         Get.toNamed(AppRoute.onBoarding);
          //       },
          //     ),
          //   ],
          // ),
        ),
      ]),
    ));
  }

  Widget buttonSheet() {
    // String? language;

    return GetBuilder<LocalController>(
        builder: (_) => Column(
              children: [
                Container(
                    margin: EdgeInsets.all(3),
                    height: 10,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.black,
                    )),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    'profile'.tr,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // ignore: avoid_types_as_parameter_names

                      Container(
                        alignment: Alignment.centerLeft,
                        child: Radio(
                          activeColor: mainColor,
                          value: controller.appThem,
                          groupValue: 1,
                          onChanged: (Value) {
                            controller.changelang('en');

                            controller.onInit();
                          },
                        ),
                      ),

                      Text(
                        'English',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    // ignore: avoid_types_as_parameter_names
                    Radio(
                      value: 'lan',
                      groupValue: controller.appThem,
                      onChanged: (langcode) {
                        controller.changelang('ar');
                      },
                      activeColor: Colors.amber,
                    ),
                    Text('Arabic'),
                  ],
                ),
              ],
            ));
  }
}
