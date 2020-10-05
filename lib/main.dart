  import 'package:flutter/material.dart';
import 'package:login/Screens/welcome.dart';
import 'package:login/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
        backgroundColor: Colors.lightBlueAccent,
      ),
      home: WelcomeScreen(),
    );
  }
}
