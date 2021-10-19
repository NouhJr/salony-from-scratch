import 'package:flutter/material.dart';
import 'package:salony_from_scratch/components/constants.dart';

class AuthButton extends StatelessWidget {
  final String label;
  AuthButton({
    required this.label,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
        color: Colors.black,
      ),
      child: Center(
        child: Text(
          label,
          style: KAuthButtonTextStyle,
        ),
      ),
    );
    // ElevatedButton(
    //   onPressed: onPressedFunction(),
    //   child: Text(label),
    //   style: ButtonStyle(backgroundColor: MatreialStateProperty<Color?> Colors.black),
    // );
  }
}
