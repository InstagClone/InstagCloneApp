import 'package:flutter/material.dart';
import 'package:instagclone/components/textFieldContainer.dart';
import 'package:instagclone/constants.dart';

class RoudnedPasswordField extends StatefulWidget {
  final ValueChanged<String> onChanged;
  final TextEditingController controller;
  
  const RoudnedPasswordField({
    Key key,
    this.onChanged,
    @required this.controller
  }) : super(key: key);

  @override
  _RoudnedPasswordFieldState createState() => _RoudnedPasswordFieldState();
}

class _RoudnedPasswordFieldState extends State<RoudnedPasswordField> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        controller: widget.controller,
        onChanged: widget.onChanged,
        decoration: InputDecoration(
          hintText: 'Password',
          icon: Icon(
            Icons.lock,
            color: KPrimaryColor
          ),
          suffixIcon: InkWell(
            onTap: _togglePassword,
            child: Icon(
              isObscure ? Icons.visibility_off : Icons.visibility,
              color: KPrimaryColor
            ),
          ),
          border: InputBorder.none
        ),
        obscureText: isObscure,
      ),
    );
  }

  void _togglePassword() {
    setState(() {
      isObscure = !isObscure;
    });
  }
}
