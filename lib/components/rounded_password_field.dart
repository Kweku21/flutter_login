import 'package:flutter/material.dart';
import 'package:login/components/text_field_container.dart';

import '../constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChnaged;

  const RoundedPasswordField({
    Key key,
    this.onChnaged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        child: TextField(
          obscureText: true,
          onChanged: onChnaged,
          decoration: InputDecoration(
              hintText: "Password",
              icon: Icon(
                Icons.lock,
                color: kPrimaryColor,
              ),
              suffixIcon: Icon(
                Icons.visibility,
                color: kPrimaryColor,
              ),
              border: InputBorder.none
          ),
        )
    );
  }
}
