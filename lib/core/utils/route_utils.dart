import 'package:chat_app/ui/auth/signin_screen.dart';
import 'package:chat_app/ui/auth/signup_screen.dart';
import 'package:chat_app/ui/home/home_screen.dart';
import 'package:chat_app/ui/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class RouteUtils {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case '/home':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case '/signup':
        return MaterialPageRoute(builder: (_) => SignupScreen());
      case '/signin':
        return MaterialPageRoute(builder: (_) => SigninScreen());
      default:
        return MaterialPageRoute(
          builder:
              (_) => Scaffold(
                body: Center(
                  child: Text('No route defined for ${settings.name}'),
                ),
              ),
        );
    }
  }
}
