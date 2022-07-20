import 'package:flutter/material.dart';
import 'package:smile/core/constant/theme.dart';

class TextFormeFieldAuth extends StatelessWidget {
  final String hintext;
  final String lable;
  final IconData iconData;
  final Widget suffixIcon;
  final bool abscureText;
  final TextEditingController? mycontroller;
  final String? Function(String?) valid;
  final bool isNumber;

  const TextFormeFieldAuth({
    Key? key,
    required this.hintext,
    required this.lable,
    required this.suffixIcon,
    required this.abscureText,
    this.mycontroller,
    required this.iconData,
    required this.valid,
    required this.isNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: abscureText,
      keyboardType: isNumber
          ? const TextInputType.numberWithOptions(decimal: true)
          : TextInputType.text,
      validator: valid,
      style: const TextStyle(color: Colors.white, fontSize: 15),
      controller: mycontroller,
      cursorColor: mainColor,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        label: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              lable,
              style: const TextStyle(fontSize: 18, color: mainColor),
            )),

        contentPadding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 30,
        ),
        prefixIcon: Icon(
          iconData,
          color: gray2,
        ),
        suffixIcon: suffixIcon,

        hintText: hintext,
        hintStyle: const TextStyle(color: gray2),
        // fillColor: gray2,
        // filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: mainColor),
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
