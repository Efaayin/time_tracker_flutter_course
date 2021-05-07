import 'package:flutter/material.dart';

import '../../common_widgets/custom_elevated_button.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Time Tracker'),
        elevation: 2.0,
      ),
      body: _buildContent(),
      backgroundColor: Colors.grey[200],
    );
  }

  Container _buildContent() {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Sign In",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          CustomElevatedButton(
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
          ),

          CustomElevatedButton(
            child: Text(
            "Sign In with Facebook",
            style: TextStyle(
              color: Colors.white,
              fontSize: 15.0,
            ),
          ),
          style: ElevatedButton.styleFrom(
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(4.0)),
            primary: Colors.blue[800],
          ),
          onPressed: () {},
          ),
        ],
      ),
    );
  }
}
