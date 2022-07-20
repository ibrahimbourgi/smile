import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smile/core/constant/routes.dart';
import 'package:smile/view/screen/auth/main_screen/profile_screen.dart';
import '../../../core/constant/theme.dart';

class ListViewHorizontal extends StatelessWidget {
  const ListViewHorizontal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 38, 38, 38),
      padding: const EdgeInsets.only(right: 10, left: 10, top: 10),
      margin: const EdgeInsets.only(top: 30.0),
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Column(
            children: [
              Container(
                padding: const EdgeInsets.all(0),
                width: 60.0,
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(color: mainColor),
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.transparent,
                ),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.computer_rounded,
                      color: mainColor,
                    )),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Computers',
                style: TextStyle(fontSize: 12, color: mainColor),
              )
            ],
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.all(0),
                width: 60.0,
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(color: mainColor),
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.transparent,
                ),
                child: IconButton(
                    onPressed: () {
                      Get.toNamed(AppRoute.mainScreen);
                    },
                    icon: const Icon(
                      Icons.directions_car,
                      color: mainColor,
                    )),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Cars',
                style: TextStyle(fontSize: 12, color: mainColor),
              )
            ],
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.all(0),
                width: 60.0,
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(color: mainColor),
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.transparent,
                ),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.home,
                      color: mainColor,
                    )),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Computers',
                style: TextStyle(fontSize: 12, color: mainColor),
              )
            ],
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.all(0),
                width: 60.0,
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(color: mainColor),
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.transparent,
                ),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.foundation,
                      color: mainColor,
                    )),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'fashions',
                style: TextStyle(fontSize: 12, color: mainColor),
              )
            ],
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.all(0),
                width: 60.0,
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(color: mainColor),
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.transparent,
                ),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.format_list_bulleted,
                      color: mainColor,
                    )),
              ),
              const SizedBox(
                height: 5,
              ),
              const Flexible(
                child: Text(
                  'Next Categories',
                  style: TextStyle(fontSize: 12, color: mainColor),
                ),
              )
            ],
          ),
          const SizedBox(
            width: 12,
          ),
        ],
      ),
    );
  }
}
