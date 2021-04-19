import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagclone/Screens/Login/components/background.dart';
import 'package:instagclone/Screens/SignUp/signUpScreen.dart';
import 'package:instagclone/components/alreadyHaveAnAccountCheck.dart';
import 'package:instagclone/components/roundedButton.dart';
import 'package:instagclone/components/roundedInput.dart';
import 'package:instagclone/components/roundedPasswordField.dart';
import 'package:instagclone/constants.dart';

class Body extends StatefulWidget {
  const Body({
    Key key,
  }) : super(key: key);

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
            'LOGIN',
            style: TextStyle(fontWeight: FontWeight.bold)
          ),
          SizedBox(height: size.height * 0.02),
          SvgPicture.asset(
            'assets/icons/login.svg',
            height: size.height * 0.25,
          ),
          SizedBox(height: size.height * 0.02),
          RoundedInputField(
            hintText: 'Username',
            onChanged: (value) {},
            controller: usernameController,
          ),
          RoudnedPasswordField(
            onChanged: (value) {},
            controller: passwordController,
          ),
          RoundedButton(
            text: "LOGIN",
            onPressed: () {
              print(passwordController.text);
            },
          ),
          SizedBox(height: size.height * 0.02),
          AlreadyHaveAnAccountCheck(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SignUpScreen();
              }));
            }
          ),
        ],
      ),
    );
  }
}
