import 'package:flutter/material.dart';
import 'package:smile/core/constant/theme.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: const Text('CategoryScreen'),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.shop))],
      ),
    );
  }
}
