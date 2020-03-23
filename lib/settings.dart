import 'package:flutter/material.dart';
import 'package:wejog1/dashboard.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[500],
        leading: IconButton(
          onPressed: (){
            Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Dashboard()),
            );
          },
          icon: Icon(
            Icons.arrow_back,
          )
        ),
        title: Title(
          color: Colors.white,
          child: Text("Settings"),
          
        ),
      ),
    );
  }
}