import 'package:flutter/material.dart';
import 'package:infosat/components/text_field_container.dart';
import 'package:infosat/screens/login/login_screen.dart';
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
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Matricule",
              icon: Icon(Icons.person,color: Colors.red),
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: " Email",
              onChanged: (value) {},
              icon: Icon(Icons.mail,color: Colors.red),
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "Activation",
              press: () {},
            ),


          ],
        ),
      ),
    );
  }
}