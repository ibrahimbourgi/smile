import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smile/core/constant/theme.dart';

Future<bool> alertExitApp() {
  Get.defaultDialog(
      title: "alert_title".tr,
      titleStyle:
          const TextStyle(color: mainColor, fontWeight: FontWeight.bold),
      middleText: "alert_desc".tr,
      actions: [
        ElevatedButton(
            onPressed: () {
              exit(0);
            },
            style: ElevatedButton.styleFrom(
              primary: mainColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
            child: Text(
              "alert_but1".tr,
              style: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold),
            )),
        const SizedBox(
          width: 20,
        ),
        ElevatedButton(
            onPressed: () {
              Get.back();
            },
            style: ElevatedButton.styleFrom(
              primary: mainColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
            child: Text(
              "alert_but2".tr,
              style: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold),
            )),
      ]);
  return Future.value(true);
}
