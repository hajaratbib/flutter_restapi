import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:infosat/screens/demande/demande_screen.dart';
import 'package:infosat/screens/logwelcome/components/background.dart';
import 'package:infosat/components/rounded_button.dart';
import 'package:infosat/screens/reclam/reclam_screen.dart';
import 'package:infosat/screens/welcome/welcome_screen.dart';


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
          RoundedButton(
            text: "Demande de congé ",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DemandeScreen();
                  },
                ),
              );
            },
          ),
          RoundedButton(
            text: "Réclamation ",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ReclamScreen();
                  },
                ),
              );
            },
          ),
            Image.asset('assets/code.jpg'),
          RoundedButton(
            text: "Déconnexion ",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return WelcomeScreen();
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