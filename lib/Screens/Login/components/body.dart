import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagclone/Screens/Login/components/background.dart';
import 'package:instagclone/Screens/SignUp/signUpScreen.dart';
import 'package:instagclone/components/alreadyHaveAnAccountCheck.dart';
import 'package:instagclone/components/roundedButton.dart';
import 'package:instagclone/components/roundedInput.dart';
import 'package:instagclone/components/roundedPasswordField.dart';
import 'package:instagclone/constants.dart';

class Body extends StatelessWidget {
  final bool loading;
  const Body({
    Key key,
    this.loading = false
  }) : super(key: key);

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
            onChanged: (value) {
              print(value);
            },
          ),
          RoudnedPasswordField(
            onChanged: (value) {
              print(value);
            }
          ),
          RoundedButton(
            text: "LOGIN",
            onPressed: () {}
          ),
          SizedBox(height: size.height * 0.025),
          AlreadyHaveAnAccountCheck(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SignUpScreen();
              }));
            }
          ),
          SizedBox(height: size.height * 0.025),
          // CircularProgressIndicator(
          //   valueColor: AlwaysStoppedAnimation<Color>(KPrimaryColor),
          // )
        ],
      )
    );
  }
}
