import 'package:flutter/material.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:salony_from_scratch/components/constants.dart';

class Warning {
  void errorMessage(BuildContext context,
      {required String title,
      required String message,
      required IconData icons}) {
    Flushbar(
      titleText: Text(
        title,
        style: KFlushBarTitleTextStyle,
      ),
      messageText: Text(
        message,
        style: KFlushBarMessageTextStyle,
      ),
      icon: Icon(
        icons,
        size: 30,
        color: Colors.red,
      ),
      borderWidth: 5,
      duration: Duration(seconds: 3),
      borderRadius: BorderRadius.circular(10.0),
    )..show(context);
  }
}
