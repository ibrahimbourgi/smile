import 'package:flutter/material.dart';
import 'package:smile/core/constant/theme.dart';

class ButtonTextFieldAuth extends StatelessWidget {
  final String text;
  final void Function()? onPressed;

  const ButtonTextFieldAuth({Key? key, required this.text, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 350,
      padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 15),
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      color: mainColor,
      child: Text(
        text,
        style: const TextStyle(
            color: Colors.black,
            fontFamily: 'Philosopher',
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
