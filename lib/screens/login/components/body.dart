import 'package:flutter/material.dart';
import 'package:infosat/screens/adminwelcome/adminwelcome_screen.dart';
import 'package:infosat/screens/login/login_screen.dart';
import 'package:infosat/screens/logwelcome/logwelcome_screen.dart';
import 'package:infosat/screens/signup/components/background.dart';
import 'package:infosat/screens/signup/components/or_divider.dart';
import 'package:infosat/screens/signup/components/social_icon.dart';
import 'package:infosat/components/already_have_an_account_acheck.dart';
import 'package:infosat/components/rounded_button.dart';
import 'package:infosat/components/rounded_input_field.dart';
import 'package:infosat/components/rounded_password_field.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int x=0;
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Matricule",
              onChanged: (value) {},
              icon: Icon(Icons.person,color: Colors.red),
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "Se connecter",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      if (x==0) return LogwelcomeScreen();
                      else  return AdminwelcomeScreen();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}