import 'package:flutter/material.dart';
import 'package:instagclone/constants.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key key,
    @required this.child
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.maybeOf(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, ),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: KPrimaryLightColor,
        borderRadius: BorderRadius.circular(29)
      ),
      child: child,
    );
  }
}
