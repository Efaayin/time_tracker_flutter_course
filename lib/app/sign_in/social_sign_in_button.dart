import 'package:flutter/material.dart';
import 'package:time_tracker_flutter_course/common_widgets/custom_elevated_button.dart';

class SocialSignInButton extends CustomElevatedButton {
  SocialSignInButton({
    String text,
    Color color,
    Color textColor,
    VoidCallback onPressed,
    String assetName,
  }) : super(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                assetName,
              ),
              Text(
                text,
                style: TextStyle(
                  color: textColor,
                  fontSize: 15.0,
                ),
              ),
              Opacity(
                child: Image.asset(
                  assetName,
                ),
                opacity: 0,
              ),
            ],
          ),
          color: color,
          height: 40.0,
          onPressed: onPressed,
        );
}
