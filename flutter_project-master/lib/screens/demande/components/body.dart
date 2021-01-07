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
                SizedBox(height: size.height * 0.1),
                Text("Date_de_début: 01/07/2021 Date_de_fin: 12/6/1996 En attente"),
                SizedBox(height: size.height * 0.02),
                Text("Date_de_début: 01/07/2020 Date_de_fin: 12/6/1996 En cours"),
                SizedBox(height: size.height * 0.02),
                Text("Date_de_début: 01/07/2019 Date_de_fin: 12/6/1996 Refusé"),
                SizedBox(height: size.height * 0.02),
                Text("Date_de_début: 01/07/2018 Date_de_fin: 12/6/1996 Terminé"),
                SizedBox(height: size.height * 0.02),
                Text("Date_de_début: 01/07/2017 Date_de_fin: 12/6/1996 Terminé"),
                SizedBox(height: size.height * 0.02),
                Text("Date_de_début: 01/07/2016 Date_de_fin: 12/6/1996 Terminé"),
                SizedBox(height: size.height * 0.02),
                Text("Date_de_début: 01/07/2015 Date_de_fin: 12/6/1996 Terminé"),
                SizedBox(height: size.height * 0.02),
                Text("Date_de_début: 01/07/2014 Date_de_fin: 12/6/1996 Terminé"),
                SizedBox(height: size.height * 0.02),
    ]
              )
              )
        );
  }

}