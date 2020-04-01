
import 'package:flare_splash_screen/flare_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:wejog1/screens/login/login.dart';

class SplashScr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
       'assets/splash.flr', //flare splash screen
        Login(), //open login page after splash screen
        startAnimation: 'Untitled',
        backgroundColor: Color(0xff181818),
    );
  }
}

