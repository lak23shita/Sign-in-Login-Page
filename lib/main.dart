import 'package:flutter/material.dart';
import 'package:agroapp/constants.dart';
import 'package:agroapp/screens/Welcome/welcome_screen.dart';

void main() => runApp(
  MyApp()
);
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
  return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:'Login Page',
      theme:ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home:WelcomeScreen(),
      );
  }
}



