import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:infosat/screens/login/login_screen.dart';
import 'package:infosat/screens/logwelcome/logwelcome_screen.dart';
import 'package:infosat/screens/signup/components/background.dart';
import 'package:infosat/screens/signup/components/or_divider.dart';
import 'package:infosat/screens/signup/components/social_icon.dart';
import 'package:infosat/components/already_have_an_account_acheck.dart';
import 'package:infosat/components/rounded_button.dart';
import 'package:infosat/components/rounded_input_field.dart';
import 'package:infosat/components/rounded_password_field.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../../../User.dart';



class Body extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<Body> {
  bool _isLoading = false;
  bool state=true;
  User futurUser;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.03),
            TextFormField(
              controller: matriculeController,
              onChanged: (value) {},
              cursorColor: Colors.black,
              obscureText: false,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                icon: Icon(Icons.account_circle, color: Colors.red),
                hintText: "Matricule",
                border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                hintStyle: TextStyle(color: Colors.black),
              ),
            ),
            TextFormField(
              controller: nomController,
              onChanged: (value) {},
              cursorColor: Colors.black,
              obscureText: false,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                icon: Icon(Icons.tag_faces, color: Colors.red),
                hintText: "Nom",
                border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                hintStyle: TextStyle(color: Colors.black),
              ),
            ),
            TextFormField(
              controller: prenomController,
              onChanged: (value) {},
              cursorColor: Colors.black,
              obscureText: false,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                icon: Icon(Icons.tag_faces, color: Colors.red),
                hintText: "Prénom",
                border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                hintStyle: TextStyle(color: Colors.black),
              ),
            ),
            TextFormField(
              onChanged: (value) {},
              controller: emailController,
              cursorColor: Colors.black,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                icon: Icon(Icons.mail, color: Colors.red),
                hintText: "Email",
                border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                hintStyle: TextStyle(color: Colors.black),
              ),
              obscureText: state,

            ),
            RoundedButton(
              text: "Créer compte",
              press: () {
                emailController.text == "" || matriculeController.text == "" || nomController.text==""|| prenomController.text=="" ? null : () {
                  setState(() {
                    futurUser = signIn(matriculeController.text, emailController.text,nomController.text,prenomController.text) as User;
                  });
                };

                },
            ),
            SizedBox(height: size.height * 0.03),

          ],
        ),
      ),
    );
  }



  Future<User>  signIn(String matricule, email,nom,prenom) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var jsonResponse = null;
    String url="http://infosat.ddnsplus.com:9085/datasnap/rest/UserServices/CreateUser/";
    url= url+matricule+"/"+nom+"/"+prenom+"/"+email;
    var response = await http.get(url);
    if(response.statusCode == 201) {
      jsonResponse = json.decode(response.body);
        return User.fromJson(jsonDecode(response.body));
    }
    else {
      throw Exception('Opération échouée');
    }
  }

  final TextEditingController matriculeController = new TextEditingController();
  final TextEditingController nomController = new TextEditingController();
  final TextEditingController prenomController = new TextEditingController();
  final TextEditingController emailController = new TextEditingController();
}
