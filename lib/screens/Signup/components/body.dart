import 'package:agroapp/components/already_having_account.dart';
import 'package:agroapp/components/rounded_button.dart';
import 'package:agroapp/components/rounded_input_field.dart';
import 'package:agroapp/components/rounded_password_field.dart';
import 'package:agroapp/screens/Login/login_screen.dart';
import 'package:agroapp/screens/Signup/components/social_icon.dart';
import 'package:flutter/material.dart';

import 'package:agroapp/screens/Signup/components/background.dart';
import 'package:agroapp/screens/Signup/components/or_divider.dart';


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
             "SIGNUP",
            style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
          Container(
            child: Image.asset("assets/images/sign up.jpg",height: 250.0,
              fit: BoxFit.cover,),
          ),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
              ),
          RoundedPasswordField(
              onChanged: (value) {},
              ),
          RoundedButton(
            text: "SIGNUP",
            press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyExistingAccount(
                  login: false,
                  press: () {
                  Navigator.push(
                    context,
             MaterialPageRoute(
              builder: (context) {
                  return LoginScreen();
              },
          ),
        );
          },
          ),
              OrDivider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SocalIcon(
                    iconSrc: "assets/icons/facebook.svg",
                    press: () {},
                  ),
                  SocalIcon(
                    iconSrc: "assets/icons/twitter.svg",
                    press: () {},
                  ),
                  SocalIcon(
                    iconSrc: "assets/icons/google-plus.svg",
                    press: () {},
                  ),

        ],
      )
    ],
    ),
    ),
  );
}
}