import 'package:flutter/material.dart';

class InputDeco{
  
  static InputDecoration profileInputDeco(labelTxt, hintTxt, inputColor){
    return InputDecoration(
      
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),

      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: Colors.green, //green input box border
          width: 2.0
        )
      ),

        labelText: labelTxt, //input box label
        labelStyle: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold, //make label bold
      ),

      contentPadding: const EdgeInsets.fromLTRB(20,0,0,0),
      hintText: hintTxt, //input box hint
      hintStyle: TextStyle(
        color: Colors.black
      )
    );
  }
}