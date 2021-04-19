import 'package:flutter/material.dart';
import 'package:instagclone/constants.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function onTap;
  const AlreadyHaveAnAccountCheck({
    Key key,
    this.login = true,
    this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Don't have an account? " : "Already have an account? ",
          style: TextStyle(color: KPrimaryColor)
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            login ? 'Sign Up Now!' : 'Sign In!',
            style: TextStyle(color: KPrimaryColor, fontWeight: FontWeight.bold)
          ),
        )
      ]
    );
  }
}
