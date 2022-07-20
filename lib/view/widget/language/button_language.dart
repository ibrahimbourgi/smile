import 'package:flutter/material.dart';
import 'package:smile/core/constant/theme.dart';

class ButtonLanguage extends StatelessWidget {
  final String buttontext;
  final void Function()? onPressed;
  const ButtonLanguage({Key? key, required this.buttontext, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 80),
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: mainColor,
        child: Text(
          buttontext,
          style: const TextStyle(
              color: Colors.black,
              fontFamily: 'Philosopher',
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
