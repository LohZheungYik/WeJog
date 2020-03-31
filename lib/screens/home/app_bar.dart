
import 'package:flutter/material.dart';

class WeJogAppBars{
  static AppBar backBtnAppBar(BuildContext context, String titleText){
    return AppBar(
        backgroundColor: Colors.green[500],
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
          ),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        title: Text(titleText),
      );
  }
}