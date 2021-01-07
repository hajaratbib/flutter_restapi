import 'package:flutter/material.dart';
import 'package:infosat/screens/login/login_screen.dart';
import 'package:infosat/screens/signup/signup_screen.dart';
import 'package:infosat/screens/welcome/components/background.dart';
import 'package:infosat/components/rounded_button.dart';
import 'package:infosat/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "BIENVENUE SUR NOTRE ESPACE RH",
              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black.withOpacity(1.0),fontStyle: FontStyle.normal,
              fontSize: 50),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "Se connecter",
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
            RoundedButton(
              text: "Activer votre compte",
              color: kPrimaryLightColor,
              textColor: Colors.black,
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