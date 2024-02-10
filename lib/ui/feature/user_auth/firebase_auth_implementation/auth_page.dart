/*

import 'package:flutter/material.dart';
import 'package:rent_ez/ui/ui.screens/login_screen.dart';
import 'package:rent_ez/ui/ui.screens/sign_up_screen.dart';

class AuthPage extends StatefulWidget {
  const AuthPage ({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool showlLoginPage =true;

  void toggleScreen(){
    setState(() {
      showlLoginPage =!showlLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if(showlLoginPage){
      return LoginScreen(showSignUpScreen:toggleScreen);
    } else{
      return SignUpScreen(showLoginPage:toggleScreen);
    }
  }
}

 */
