import 'package:flutter/material.dart';
import 'package:infosat/screens/logwelcome/components/background.dart';
import 'package:infosat/components/rounded_button.dart';
import 'package:infosat/screens/newdemande/newdemande_screen.dart';


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
                  text: "Faire une nouvelle demande ",
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return NewdemandeScreen();
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