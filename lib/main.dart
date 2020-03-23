import 'package:flutter/material.dart';
import 'package:wejog1/registrationForm.dart';
import 'package:wejog1/dashboard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[500],
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
            Image.asset('assets/logo.png'),
            SizedBox(
              height: 50
            ),
            
            TextField(
              style: TextStyle(
                color: Colors.white,
              ),
                decoration: InputDecoration(
                 enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                ) ,
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color:  Colors.white,
                    width: 2.0
                  )
                ),
                labelText: 'Username',
                labelStyle: TextStyle(
                  color: Colors.white,
                  
                ),
                hintText: 'Enter your username',
                hintStyle: TextStyle(
                  color: Colors.white
                )
              ),
            ),
             SizedBox(
              height: 20
            ),
            
            TextField(
              style: TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                ) ,
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color:  Colors.white,
                    width: 2.0
                  )
                ),
                labelText: 'Password',
                labelStyle: TextStyle(
                  color: Colors.white
                ),
                hintText: 'Enter your password',
                hintStyle: TextStyle(
                  color: Colors.white
                )
              ),
            ),
            SizedBox(
                width: double.infinity,
                child: RaisedButton.icon(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Dashboard()),
                  );
                }, 
                icon: Icon(Icons.exit_to_app), 
                label: Text("Login"),
                color: Colors.blue,
                textColor: Colors.white,
                
              ),
            ),
            SizedBox(
                width: double.infinity,
                child: RaisedButton.icon(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegistrationForm()),
            );

                }, 
                icon: Icon(Icons.account_circle), 
                label: Text("Create an account"),
                color: Colors.amber,
              ),
            )
            
          ],
        ),
      )
    );
  }
}

