import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(
        "Sign In with Google",
        style: TextStyle(
          color: Colors.black87,
          fontSize: 15.0,
        ),
      ),
      style: ElevatedButton.styleFrom(
        shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(4.0)),
        primary: Colors.white,
      ),
      onPressed: () {},
    );
  }
}