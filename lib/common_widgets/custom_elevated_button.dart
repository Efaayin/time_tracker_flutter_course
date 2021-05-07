import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;
  // final bgColor;
  final ButtonStyle style;

  CustomElevatedButton({this.onPressed, this.child, this.style,});
  // CustomElevatedButton({this.onPressed, this.child, this.style});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: child,
      style: style,
      onPressed: onPressed,
    );
  }
}
