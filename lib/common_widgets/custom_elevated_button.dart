import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;
  final Color bgColor;
  final ButtonStyle style;

  CustomElevatedButton({this.onPressed, this.child, this.bgColor, this.style,});
  // CustomElevatedButton({this.onPressed, this.child, this.style});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: child,
      style: ElevatedButton.styleFrom(
        shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(4.0)),
        primary: bgColor,
      ),
      onPressed: onPressed,
    );
  }
}
