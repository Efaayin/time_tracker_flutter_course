import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;
  final double height;
  final Color color;
  final double borderRadius;

  CustomElevatedButton({
    this.onPressed,
    this.child,
    this.height: 45.0,
    this.color,
    this.borderRadius: 5.0,
  }) : assert(borderRadius != null);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ElevatedButton( 
        child: child,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          ),
        ),
        onPressed: onPressed,
      ),
      height: height,
    );
  }
}