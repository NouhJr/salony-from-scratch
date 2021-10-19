import 'package:flutter/material.dart';
import 'package:salony_from_scratch/components/constants.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final bool isPassword;
  final Widget? icon;
  CustomTextField({
    required this.controller,
    required this.hint,
    required this.isPassword,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        fontSize: 21.0,
        color: Colors.black,
        fontWeight: FontWeight.w700,
        height: 1.0,
      ),
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(20.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(20.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(20.0),
        ),
        filled: true,
        fillColor: Color(0xFFe5e5e5),
        hintText: hint,
        hintStyle: TextStyle(
          fontFamily: KPrimaryFontFamily,
          fontSize: 20.0,
          color: Color(0xFFafaeae),
          fontWeight: FontWeight.w700,
          height: 1.0,
        ),
        suffixIcon: icon,
      ),
      cursorColor: Colors.black,
      obscureText: isPassword,
    );
  }
}
