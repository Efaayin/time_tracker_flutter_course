import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class EmailSignInForm extends StatelessWidget {
  List<Widget> _buildChildren() {
    return [
      TextField(
        decoration: InputDecoration(
          labelText: 'Email',
          hintText: 'test@test.com',
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _buildChildren(),
    );
  }
}
