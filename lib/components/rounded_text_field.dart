import 'package:flutter/material.dart';
import 'package:login/components/text_field_container.dart';
import '../constants.dart';


class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChnaged;

  const RoundedInputField({
    Key key,
    this.hintText,
    this.icon,
    this.onChnaged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child:TextField(
        onChanged: onChnaged,
        decoration: InputDecoration(
            hintText: hintText,
            border: InputBorder.none,
            icon: Icon(
              icon,
              color: kPrimaryColor,
            )
        ),
      ) ,);
  }
}
