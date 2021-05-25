import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:time_tracker_flutter_course/common_widgets/form_submit_button.dart';

class EmailSignInForm extends StatelessWidget {

  String email;

  void _submit() {
    // TODO: print email and password

    print(email);
  }

  List<Widget> _buildChildren() {
    return [
      TextField(
        decoration: InputDecoration(
          labelText: 'Email',
          hintText: 'test@test.com',
        ),
        onChanged: (value) => email = value,
      ),
      SizedBox(height: 8.0),
      TextField(
        decoration: InputDecoration(
          labelText: 'Password',
        ),
        obscureText: true,
      ),
      SizedBox(height: 20.0),
      FormSubmitButton(
        text: 'Sign In',
        onPressed: _submit,
      ),
      SizedBox(height: 8.0),
      TextButton(
        onPressed: () {},
        child: Text(
          'Need an account? Register',
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: _buildChildren(),
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
      ),
    );
  }
}
