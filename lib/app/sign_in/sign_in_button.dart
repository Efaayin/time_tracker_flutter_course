import 'package:flutter/material.dart';
import 'package:time_tracker_flutter_course/common_widgets/custom_elevated_button.dart';

class SignInButton extends CustomElevatedButton {
  SignInButton({
    String text,
    Color color,
    Color textColor,
    TextStyle style,
    VoidCallback onPressed,
  }) : super(
    child: Text(
      text,
      // style: TextStyle(
      //   color: textColor,
      //   fontSize: 15.0,
      // ),
      style: style,
      // onPressed: onPressed,
    ),
  );
}