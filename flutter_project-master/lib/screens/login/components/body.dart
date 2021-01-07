import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:infosat/screens/adminwelcome/adminwelcome_screen.dart';
import 'package:infosat/screens/login/login_screen.dart';
import 'package:infosat/screens/logwelcome/logwelcome_screen.dart';
import 'package:infosat/screens/signup/components/background.dart';
import 'package:infosat/screens/signup/components/or_divider.dart';
import 'package:infosat/screens/signup/components/social_icon.dart';
import 'package:infosat/components/already_have_an_account_acheck.dart';
import 'package:infosat/components/rounded_button.dart';
import 'package:http/http.dart' as http;

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
              controller: emailController,
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
              onChanged: (value) {},
              controller: passwordController,
              cursorColor: Colors.black,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                icon: Icon(Icons.lock, color: Colors.red),
                hintText: "Password",
                border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                hintStyle: TextStyle(color: Colors.black),
                suffixIcon:  IconButton( icon: Icon(Icons.visibility),
                  onPressed: () {
                  press();
                  }
                ),
                ),
              obscureText: state,

              ),
            RoundedButton(
              text: "Se connecter",
              press: () {
                emailController.text == "" || passwordController.text == "" ? null : () {
                  setState(() {
                    futurUser = signIn(emailController.text, passwordController.text) as User;
                  });
                };
                if (futurUser.code=="0"){
                  if (futurUser.result[1][1]=="130"){
                    Navigator.push(context,MaterialPageRoute(builder: (context) {return AdminwelcomeScreen();},),);
                  }
                else {
                  Navigator.push(context,MaterialPageRoute(builder: (context) {return LogwelcomeScreen();},),);
                };
                }
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
  press (){
    if(state ==true){
      state=false;
    }
    else{
      state=true;
    }
  }


  Future<User>  signIn(String email, pass) async {
    Map data = {
      "token": "",
      "matricule": email,
      "password": pass

    };
    var jsonResponse = null;
    var response = await http.post("http://infosat.ddnsplus.com:9085/datasnap/rest/UserServices/Login/",headers: {"Content-Type": "application/json"}, body: data);
    if(response.statusCode == 201) {
      jsonResponse = json.decode(response.body);
      return User.fromJson(jsonDecode(response.body));
    }
    else {
      throw Exception('Echoué à reccupérer les données');

    }
  }
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();
}
