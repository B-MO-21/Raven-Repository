import 'package:flutter_raven/classes/auth.dart';
import 'package:flutter/cupertino.dart';

class AuthProvider extends InheritedWidget {
  const AuthProvider({Key? key, required Widget child, this.auth})
      : super(key: key, child: child);
  final BaseAuth? auth;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;

  static AuthProvider? of(BuildContext context) {
    final AuthProvider? result =
        context.dependOnInheritedWidgetOfExactType<AuthProvider>();
    return result;
  }
}
