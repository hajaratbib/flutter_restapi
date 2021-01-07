import 'package:flutter/material.dart';
import 'package:infosat/components/rounded.dart';
import 'package:infosat/components/rounded_input_field.dart';
import 'package:infosat/components/text_field_container.dart';
import 'package:infosat/screens/logwelcome/components/background.dart';
import 'package:infosat/components/rounded_button.dart';
import 'package:infosat/screens/logwelcome/logwelcome_screen.dart';


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
                TextFieldContainer(
                  child: Text("Enter votre réclamation"),
                ),
                rounded(
                  hintText: "titre",
                  onChanged: (value) {},
                ),
                rounded(
                  hintText: "contenu",
                  onChanged: (value) {},
                ),


                RoundedButton(
                  text: "Envoyer la réclamation",
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LogwelcomeScreen();
                        },
                      ),
                    );
                  },
                ),



              ],)
        )
    );


  }
}