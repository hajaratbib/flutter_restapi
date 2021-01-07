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
                Text("Entrez votre réclamation",
                  style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black.withOpacity(1.0),fontStyle: FontStyle.normal,
                    fontSize: 30),
                  textAlign: TextAlign.center),
                SizedBox(height: size.height * 0.08),
                RoundedInputField(
                  hintText: "Titre",
                  onChanged: (value) {},
                  icon: Icon(Icons.title,color: Colors.red),
                ),
                RoundedInputField(
                  hintText: "Contenu",
                  onChanged: (value) {},
                  icon: Icon(Icons.text_fields,color: Colors.red),
                ),


                RoundedButton(
                  text: "Envoyer la réclamation",
                  press: () {
                  },
                ),



              ],)
        )
    );


  }
}