import 'dart:ui';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:time_tracker_flutter_course/app/sign_in/email_sign_in_page.dart';
import 'package:time_tracker_flutter_course/app/sign_in/sign_in_button.dart';
import 'package:time_tracker_flutter_course/app/sign_in/social_sign_in_button.dart';
import 'package:time_tracker_flutter_course/common_widgets/show_exception_alert_dialog.dart';
import 'package:time_tracker_flutter_course/services/auth.dart';

class SignInPage extends StatefulWidget {
  static Widget create(BuildContext context) {
    return Provider<SignInBloc>(
          create: (_) => SignInBloc(),
          child: SignInPage(),
        );
      }
      @override
      _SignInPageState createState() => _SignInPageState();
    }
    
    class SignInBloc {
}

class _SignInPageState extends State<SignInPage> {
  bool _isLoading = false;

  void _showSignInError(BuildContext context, Exception exception) {
    if (exception is FirebaseException &&
        exception.code == 'ERROR_ABORTED_BY_USER') {
      return;
    }
    showExceptionAlertDialog(
      context,
      title: 'Sign in failed',
      exception: exception,
    );
  }

  Future<void> _signInAnonymously(BuildContext context) async {
    try {
      setState(() => _isLoading = true);
      final auth = Provider.of<AuthBase>(
        context,
        listen: false,
      );
      await auth.signInAnonymously();
    } on Exception catch (e) {
      _showSignInError(
        context,
        e,
      );
    } finally {
      setState(() => _isLoading = false);
    }
  }

  Future<void> _signInWithGoogle(BuildContext context) async {
    try {
      setState(() => _isLoading = true);
      final auth = Provider.of<AuthBase>(
        context,
        listen: false,
      );
      await auth.signInWithGoogle();
    } on Exception catch (e) {
      _showSignInError(
        context,
        e,
      );
    } finally {
      setState(() => _isLoading = false);
    }
  }

  Future<void> _signInWithFacebook(BuildContext context) async {
    try {
      setState(() => _isLoading = true);
      final auth = Provider.of<AuthBase>(
        context,
        listen: false,
      );
      await auth.signInWithFacebook();
    } on Exception catch (e) {
      _showSignInError(
        context,
        e,
      );
    } finally {
      setState(() => _isLoading = false);
    }
  }

  void _signInWithEmail(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        fullscreenDialog: true,
        builder: (context) => EmailSignInPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Time Tracker',
        ),
        elevation: 2.0,
      ),
      body: _buildContent(context),
      backgroundColor: Colors.grey[200],
    );
  }

  Container _buildContent(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            child: _buildHeader(),
            height: 50.0,
          ),
          SizedBox(
            height: 48.0,
          ),
          SocialSignInButton(
            assetName: "images/google-logo.png",
            text: "Sign in with Google",
            textColor: Colors.black87,
            color: Colors.white,
            onPressed: _isLoading ? null :() => _signInWithGoogle(context),
          ),
          SizedBox(
            height: 10.0,
          ),
          SocialSignInButton(
            assetName: "images/facebook-logo.png",
            text: "Sign in with Facebook",
            textColor: Colors.white,
            color: Color(0xff334d92),
            onPressed: _isLoading ? null : () => _signInWithFacebook(context),
          ),
          SizedBox(
            height: 10.0,
          ),
          SignInButton(
            text: "Sign in with Email",
            textColor: Colors.white,
            color: Colors.teal[700],
            onPressed: _isLoading ? null : () => _signInWithEmail(context),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            "or",
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.black87,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10.0,
          ),
          SignInButton(
            text: "Go Anonymous",
            textColor: Colors.black,
            color: Colors.lime[700],
            onPressed: _isLoading ? null : () => _signInAnonymously(context),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    if (_isLoading) {
      return Center(
        child: CircularProgressIndicator(),
      );
    }
    return Text(
      "Sign In",
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 32.0,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
