import 'package:flutter/material.dart';
import 'package:wejog1/widgets/loginWidgets.dart';

class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);
  @override
    _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var usernameController = new TextEditingController();
  var passwordController = new TextEditingController();
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[500],
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/logo.png'), //logo
            SizedBox(
              height: 50
            ),
            LoginScreenInputs(ctrl: usernameController, hint: "Enter your username", label: "Username", isPassword: false,), //username box
            SizedBox(
              height: 20
            ),
            LoginScreenInputs(ctrl: passwordController, hint: "Enter your password", label: "Password", isPassword: true,), //password box

            LoginButton(nameCtrl: usernameController, passwordCtrl: passwordController), //login button
            RegisterButton(), //register button (not yet usable)
            
          ],
        ),
      )
    );
  }
}



