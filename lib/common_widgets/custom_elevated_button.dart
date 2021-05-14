import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;
  final ButtonStyle style;
  final double height;
  final Color color;
  final double borderRadius;

  CustomElevatedButton({
    this.onPressed,
    this.child,
    this.style,
    this.height: 50.0,
    this.color,
    this.borderRadius,
  });

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

// ButtonStyle(
//   shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//     RoundedRectangleBorder(
//       borderRadius: BorderRadius.circular(18.0),
//       side: BorderSide(color: Colors.red)
//     )
//   )
// )
