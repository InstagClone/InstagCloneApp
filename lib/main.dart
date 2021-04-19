import 'package:flutter/material.dart';
import 'package:instagclone/Screens/Welcome/welcomeScreen.dart';
import 'package:instagclone/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagclone',
      theme: ThemeData(
        primaryColor: KPrimaryColor,
        scaffoldBackgroundColor: Colors.white
      ),
      home: WelcomeScreen()
    );
  }
}
