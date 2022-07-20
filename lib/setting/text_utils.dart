// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/cupertino.dart';

class TextUtils extends StatelessWidget {
  final String text;
  final FontWeight fontweight;
  final double fontsize;
  final String fontfamily;
  final Color color;
  final TextDecoration underline;

  const TextUtils({
    Key? key,
    required this.text,
    required this.fontweight,
    required this.fontsize,
    required this.fontfamily,
    required this.color,
    required this.underline,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
          fontFamily: fontfamily,
          fontWeight: fontweight,
          fontSize: fontsize,
          color: color,
          decoration: underline,
        ));
  }
}

String baseUrl = 'https://fakestoreapi.com';
