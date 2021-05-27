import 'package:flutter/cupertino.dart';
import 'package:time_tracker_flutter_course/services/auth.dart';

class Provider extends InheritedWidget {

  Provider({@required this.auth, @required this.child});
  final AuthBase auth;
  final Widget child;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false;

  static AuthBase of(BuildContext context) {
    Provider provider = context.dependOnInheritedWidgetOfExactType<Provider>();
    return provider.auth;
  }
}