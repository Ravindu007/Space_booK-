import 'package:flutter/material.dart';
import 'package:space_book/landingPage.dart';
//import 'package:space_book/landingPage.dart';
import 'package:space_book/loginScreen.dart';
import 'package:space_book/signupScreen.dart';

main(){
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return signupScreen();
  }
}
