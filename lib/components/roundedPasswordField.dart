import 'package:flutter/material.dart';
import 'package:instagclone/components/textFieldContainer.dart';
import 'package:instagclone/constants.dart';

class RoudnedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoudnedPasswordField({
    Key key,
    this.onChanged
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: 'Password',
          icon: Icon(
            Icons.lock,
            color: KPrimaryColor
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: KPrimaryColor
          ),
          border: InputBorder.none
        ),
      ),
    );
  }
}
