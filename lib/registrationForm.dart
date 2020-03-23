import 'dart:developer';

import 'package:flutter/material.dart';



class RegistrationForm extends StatefulWidget {
  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  var dateController = TextEditingController();
  var currentSelectedValue;
  final deviceTypes = ["Mac", "Windows", "Mobile"];

  @override
  Widget build(BuildContext context) {
    


    return new Scaffold(
      backgroundColor: Colors.green[500],
      appBar: new AppBar(
        title: new Text("Register an account"),
        backgroundColor: Colors.green[900],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(0, 7, 0, 0),
        child: Column(
          children: <Widget>[
            TextField(
                
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDeco.inputDeco("First name", "Enter your first name"),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: TextField(
                  
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDeco.inputDeco("Last name", "Enter your last name"),
              ),
            ),
             Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: GestureDetector(
                    onTap:(){
                      showDatePicker(
                        context: context, 
                        initialDate: DateTime(2000), 
                        firstDate: DateTime(1900), 
                        lastDate: DateTime.now(),
                      ).then((date){
                        var _date = DateTime.parse(date.toString());
                        var formattedDate = "${_date.year}-${_date.month}-${_date.day}";
                        dateController.text = formattedDate.toString();
                      });
                    },
                    child: AbsorbPointer(
                      child: TextField(
                        controller: dateController,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDeco.inputDeco("Date of birth", "dd/mm/yyyy"),
                ),
                    ),
              ),
            ),
          DropdownButtonFormField<String>(
          hint: Text("Select Device"),
          value: currentSelectedValue,
          isDense: true,
          onChanged: (newValue) {
            setState(() {
              currentSelectedValue = newValue;
            });
            print(currentSelectedValue);
          },
          items: deviceTypes.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          ),
            
          ],
        ),
      )
    );
  }
}

class InputDeco {
  
  static InputDecoration inputDeco(labelTxt, hintTxt){
    return InputDecoration(
                 enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ) ,
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color:  Colors.white,
                    width: 2.0
                  )
                ),
                labelText: labelTxt,
                labelStyle: TextStyle(
                  color: Colors.white,
                  
                ),
                contentPadding: const EdgeInsets.fromLTRB(5,0,0,0),

                hintText: hintTxt,
                hintStyle: TextStyle(
                  color: Colors.white
                  
                )
              );
  }
}