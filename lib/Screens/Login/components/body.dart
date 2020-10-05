import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login/components/already_have_account.dart';
import 'package:login/components/rounded_button.dart';
import 'package:login/components/rounded_password_field.dart';
import 'package:login/components/rounded_text_field.dart';
import 'package:login/components/text_field_container.dart';
import 'package:login/constants.dart';

import 'background.dart';

class Body extends StatelessWidget {

  const Body({
    Key key,

  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      child: SingleChildScrollView(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
              "Login",
              style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height*0.03,),
          SvgPicture.asset(
              "assets/icons/login.svg",
              height:size.height * 0.35 ,
          ),
          SizedBox(height: size.height*0.03,),
          RoundedInputField(
            icon: Icons.person,
            hintText: "Your Email",
            onChnaged: (value){ return null;},
          ),

          RoundedPasswordField(onChnaged: (value){},),

          RoundedButton(
            text: "Login",
            textColor: Colors.white,
            color: kPrimaryColor,
            press: (){} ,
          ),
          SizedBox(height: size.height*0.03,),

          AlreadyHaveAccountCheck(
            press: (){

            },
          ),


        ],
    ),
      ),);
  }
}





