import 'package:flutter/material.dart';
import 'package:smile/core/constant/theme.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Expanded(
        child: Container(
          margin: const EdgeInsets.only(right: 10, left: 10),
          padding: const EdgeInsets.only(left: 10, right: 15),
          alignment: Alignment.centerLeft,
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
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
                  padding: const EdgeInsets.only(top: 3),
                  child: const Icon(
                    Icons.search_outlined,
                    size: 35,
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
                    'Search...',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
    );
  }
}
