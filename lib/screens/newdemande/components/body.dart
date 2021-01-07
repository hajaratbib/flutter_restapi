import 'package:flutter/material.dart';
import 'package:infosat/components/rounded_button.dart';
import 'package:infosat/components/text_field_container.dart';
import 'package:infosat/screens/logwelcome/logwelcome_screen.dart';
import 'package:infosat/screens/newdemande/components/background.dart';

import '../../../components/rounded_input_field.dart';
import '../../../constants.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: TextTheme(body1: TextStyle(fontSize: 21))
      ),
      home: Home(),
    );
  }
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>{
  DateTime dateTime1;
  DateTime dateTime2;
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
            hintText: "Date de début",
            onChanged: (value) {},
            icon: Icon(Icons.date_range,color: Colors.red),
          ),
          RoundedButton(
            text: "Choisir une date",
            color: kPrimaryLightColor,
            textColor: Colors.black,
            press: () {
              showDatePicker(
                  context: context,
                  initialDate: dateTime1 == null ? DateTime.now() : dateTime1,
                  firstDate: DateTime(2020),
                  lastDate: DateTime(2030)
              ).then((date) {
                setState(() {
                  dateTime1 = date;
                });
              });

            },
          ),
          SizedBox(height: size.height * 0.03),
          RoundedInputField(
            hintText: "Date de fin",
            onChanged: (value) {},
            icon: Icon(Icons.date_range,color: Colors.red),
          ),
          RoundedButton(
            text: "Choisir une date",
            color: kPrimaryLightColor,
            textColor: Colors.black,
            press: () {
              showDatePicker(
                  context: context,
                  initialDate: dateTime1 == null ? DateTime.now() : dateTime1,
                  firstDate: DateTime(2020),
                  lastDate: DateTime(2030)
              ).then((date) {
                setState(() {
                  dateTime1 = date;
                });
              });

            },
          ),
          SizedBox(height: size.height * 0.03),
          RoundedButton(
            text: "Confirmer la demande de congé ",
            press: () {
            },
          ),
        ],
    ),
        ),
    );
  }
}