import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dio/dio.dart';
import 'package:instagclone/Screens/Login/loginScreen.dart';
import 'package:instagclone/Screens/SignUp/components/background.dart';
import 'package:instagclone/components/alreadyHaveAnAccountCheck.dart';
import 'package:instagclone/components/roundedButton.dart';
import 'package:instagclone/components/roundedInput.dart';
import 'package:instagclone/components/roundedPasswordField.dart';
import 'dart:async';
import 'package:instagclone/constants.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.maybeOf(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'SIGN UP',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SvgPicture.asset(
            'assets/icons/signup.svg',
            height: size.height * 0.30
          ),
          RoundedInputField(
            hintText: 'Your Email',
            onChanged: (value) {},
            controller: usernameController,
          ),
          RoudnedPasswordField(
            onChanged: (value) {},
            controller: passwordController,
          ),
          RoundedButton(
            text: 'SIGN UP',
            onPressed: _createAccount
          ),
          SizedBox(height: size.height * 0.025),
          AlreadyHaveAnAccountCheck(
            login: false,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return LoginScreen();
              }));
            },
          )
        ],
    ));
  }

  void _createAccount() async {
    try {
      var response = await Dio().post(
        CreateAccountUrl,
        data: {
          'username': usernameController.text,
          'password': passwordController.text
        },
        options: Options(contentType: Headers.formUrlEncodedContentType)
      );
      if(response.statusCode == 200) {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return LoginScreen();
        }));
      }
    } on DioError catch (e) {
      print(e.response.data);
    }
  }
}
