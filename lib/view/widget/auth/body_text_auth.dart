import 'package:flutter/material.dart';
import 'package:smile/core/constant/theme.dart';

class BodyTextAuth extends StatelessWidget {
  final String text;
  const BodyTextAuth({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
    );
  }
}

class BodyTextAuth0 extends StatelessWidget {
  final String text0;
  const BodyTextAuth0({Key? key, required this.text0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text0,
      textAlign: TextAlign.center,
      style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
    );
  }
}

class BodyTextAuth1 extends StatelessWidget {
  final String text1;
  final String text2;
  const BodyTextAuth1(
      {Key? key, required this.text1, required this.text2, required text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: text1,
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: gray2,
          height: 1.5,
          fontFamily: 'Philosopher',
        ),
        children: <TextSpan>[
          TextSpan(
            text: text2,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: mainColor,
              fontFamily: 'Philosopher',
            ),
          ),
        ],
      ),
    );
  }
}
