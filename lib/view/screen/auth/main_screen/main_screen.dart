import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:smile/controller/auth/main_controller.dart';
import 'package:smile/core/constant/theme.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);
  final controller = Get.find<MainController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Obx(() {
      return Scaffold(
        backgroundColor: mainColor,
        // appBar: AppBar(
        //   backgroundColor: mainColor,
        //   title: const Text('Home'),
        //   centerTitle: true,
        //   actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.shop))],
        // ),
        bottomNavigationBar: SalomonBottomBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black.withOpacity(0.5),
          currentIndex: controller.currentIndex.value,
          onTap: (index) {
            controller.currentIndex.value = index;
          },
          items: [
            /// Home
            SalomonBottomBarItem(
              icon: const Icon(
                Icons.home_outlined,
                // color: Colors.black,
              ),
              title: const Text(
                "Home",
                // style: TextStyle(color: Colors.black),
              ),
              // selectedColor: mainColor,
            ),

            /// Likes
            SalomonBottomBarItem(
              icon: const Icon(Icons.category_outlined),
              title: const Text("Categories"),
            ),

            /// Search
            SalomonBottomBarItem(
              icon: const Icon(Icons.search),
              title: const Text("Search"),
            ),

            /// Profile
            SalomonBottomBarItem(
              icon: const Icon(Icons.person_pin),
              title: const Text("Profile"),
            ),
          ],
        ),

        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: IndexedStack(
            index: controller.currentIndex.value,
            // ignore: invalid_use_of_protected_member
            children: controller.tabs.value,
          ),
        ),
      );
    }));
  }
}
