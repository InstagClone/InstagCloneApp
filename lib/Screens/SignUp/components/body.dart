import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagclone/Screens/Login/loginScreen.dart';
import 'package:instagclone/Screens/SignUp/components/background.dart';
import 'package:instagclone/components/alreadyHaveAnAccountCheck.dart';
import 'package:instagclone/components/roundedButton.dart';
import 'package:instagclone/components/roundedInput.dart';
import 'package:instagclone/components/roundedPasswordField.dart';

class Body extends StatelessWidget {
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
          SizedBox(height: size.height * 0.02),
          RoundedInputField(
            hintText: 'Your Email',
            onChanged: (value) {}
          ),
          RoudnedPasswordField(
            onChanged: (value) {},
          ),
          RoundedButton(
            text: 'SIGN UP',
            onPressed: () {},
          ),
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
}
