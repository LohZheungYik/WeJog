import 'package:flutter/material.dart';
import 'package:wejog1/screens/splashScreen/Splash.dart';

/*main function*/
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     home: SplashScr(), //launch splash screen
    );
  }
}


