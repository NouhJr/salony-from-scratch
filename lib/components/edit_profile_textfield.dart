import 'package:flutter/material.dart';
import 'package:salony_from_scratch/components/constants.dart';

class EditProfileTextField extends StatelessWidget {
  final TextEditingController controller;
  EditProfileTextField({
    required this.controller,
  });
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: TextStyle(
        fontFamily: KPrimaryFontFamily,
        fontSize: 18.0,
        color: Colors.black,
        fontWeight: FontWeight.w700,
        height: 1.0,
      ),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(45.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(45.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(45.0),
        ),
      ),
      cursorColor: Color(0xFFF5989D),
    );
  }
}
