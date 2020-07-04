import 'package:agroapp/components/already_having_account.dart';
import 'package:agroapp/components/rounded_input_field.dart';
import 'package:agroapp/components/rounded_password_field.dart';
import 'package:agroapp/components/rounded_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:agroapp/screens/Login/components/background.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:agroapp/screens/Signup/Signup_screen.dart';

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
           "LOGIN",
            style: TextStyle(fontWeight: FontWeight.bold),
            ),
          SizedBox(height: size.height * 0.03),
                Container(
                  child: Image.asset("assets/images/login .jpg",height: 250.0,
                    fit: BoxFit.cover,),
                ),
          SizedBox(height: size.height * 0.03),
          RoundedInputField(
          hintText: "Your Email",
          onChanged: (value) {},
          ),
          RoundedPasswordField(
          onChanged: (value) {},
         ),
          RoundedButton(
          text: "LOGIN",
          press: () {},
          ),
          SizedBox(height: size.height * 0.03),
          AlreadyExistingAccount(
           press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return SignUpScreen();
                },
              ),
            );
          },
        ),
      ],
      ),
      ),
    );
  }
}