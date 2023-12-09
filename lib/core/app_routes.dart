import 'package:educare2/screens/userhandel/forgetpassword/forgetpassword.dart';
import 'package:educare2/screens/userhandel/login/login.dart';
import 'package:flutter/material.dart';

import '../screens/SplashScreen/SplashScreen.dart';
import '../screens/home/home.dart';
import '../screens/onboarding/onboarding.dart';
import '../screens/userhandel/signup/signup.dart';

class AppRoutes {
  static const String splash = "/";
  //OnBoarding
  static const String onboarding = "onboarding";
  static const String page2 = "OnBoarding_page2";
  static const String page3 = "OnBoarding_page3";
  //userhandel
  static const String login = "login";
  //create account and choose
  static const String signup = "signup";
  //reset password and email send
  static const String forgetPassword = "forgetPassword";
  static const String emailSent = "emailSent";
  static const String chooseNewPass = "chooseNewPass";
  //homescreen
  static const String home = "home";

  static Route<dynamic> onGenerateRoute(RouteSettings setting) {
    switch (setting.name) {
      case splash:
        return MaterialPageRoute(
          builder: (context) {
            return const SplashScreen();
          },
        );
      case onboarding:
        return MaterialPageRoute(
          builder: (context) {
            return const OnBoarding();
          },
        );
      case page2:
        return MaterialPageRoute(
          builder: (context) {
            return const SplashScreen();
          },
        );
      case page3:
        return MaterialPageRoute(
          builder: (context) {
            return const SplashScreen();
          },
        );
      case signup:
        return MaterialPageRoute(
          builder: (context) {
            return const SignUpPage();
          },
        );
      case login:
        return MaterialPageRoute(
          builder: (context) {
            return const LoginPage();
          },
        );
      case forgetPassword:
        return MaterialPageRoute(
          builder: (context) {
            return const ForgetPasswordPage();
          },
        );
      case home:
        return MaterialPageRoute(
          builder: (context) {
            return const Home();
          },
        );

      default:
        return MaterialPageRoute(
          builder: (context) {
            return Scaffold(
              body: Center(
                child: Text("No route defined for ${setting.name}"),
              ),
            );
          },
        );
    }
  }
}
