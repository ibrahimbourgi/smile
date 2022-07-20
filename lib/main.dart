import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:smile/core/constant/routes.dart';
import 'package:smile/core/localization/changelocal.dart';
import 'package:smile/core/localization/translation.dart';
import 'package:smile/core/services/services.dart';

import 'view/screen/onboardind.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await GetStorage.init();

  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocalController controller = Get.put(LocalController());
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      locale: controller.language,
      theme: controller.appThem,
      home: const OnBoarding(),
      // routes: routes,
      getPages: AppRoutes.routes,
    );
  }
}
