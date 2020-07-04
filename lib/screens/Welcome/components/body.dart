import 'package:agroapp/constants.dart';
import 'package:agroapp/screens/Signup/Signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:agroapp/screens/Welcome/components/background.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:agroapp/components/rounded_button.dart';
import 'package:agroapp/screens/Login/login_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //provides the total height and width of our screen
    return Background(
      child:SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
                "Welcome to AgroApp",

                style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            Container(
              child: Image.asset("assets/images/main.jpg",height: 280.0,
                fit: BoxFit.cover,),
            ),
            SizedBox(height: size.height * 0.03),
            RoundedButton(
              text: "LOGIN",
              press: (){
                Navigator.push(context, MaterialPageRoute(
                  builder:(context){
                    return LoginScreen();
                  },
              ),
              );
              },
            ),
            RoundedButton(
              text: "SIGN UP",
              color: kPrimaryLightColor,
              textColor:Colors.black ,
              press: (){
                Navigator.push(context, MaterialPageRoute(
                  builder:(context){
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
