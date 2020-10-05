import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login/Screens/Login/login_screen.dart';
import 'package:login/Screens/components/background.dart';
import 'package:login/components/rounded_button.dart';
import 'package:login/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome Here',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height*0.02,
            ),
            SvgPicture.asset(
              'assets/icons/chat.svg',
              height: size.height * 0.5,
            ),
            SizedBox(
              height: size.height*0.02,
            ),
            RoundedButton(
              text:"Login",
              press: (){
                Navigator.push(context,
                MaterialPageRoute(
                    builder: (context){
                      return LoginScreen();
                    }
                ));
              },
            ),

            RoundedButton(
              text:"Sign Up",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: (){},
            ),


          ],
        ),
      ),
    );
  }
}
