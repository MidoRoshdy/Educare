import 'package:flutter/material.dart';

class LoginState {
  //! vars
  String? email;
  String? password;
  String? token;

  //! controllers
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  //! errors
  String? usernameErrorMessage;
  String? passwordErrorMessage;

  //! bools
  bool hidePass = true;
  bool rememberMe = false;
}
