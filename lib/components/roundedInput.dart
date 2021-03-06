import 'package:flutter/material.dart';
import 'package:instagclone/components/textFieldContainer.dart';
import 'package:instagclone/constants.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  final TextEditingController controller;
  const RoundedInputField({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
    @required this.controller
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        controller: controller,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: KPrimaryColor
          ),
          hintText: 'Username',
          border: InputBorder.none
        )
      ),
    );
  }
}
