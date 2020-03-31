import 'package:flutter/material.dart';
import 'package:wejog1/screens/home/index.dart';

/*login screen input boxes*/
class LoginScreenInputs extends StatelessWidget {
  
  final TextEditingController ctrl;
  final String hint, label;
  final isPassword;
  
  LoginScreenInputs({this.ctrl, this.hint, this.label, this.isPassword});

  @override
  Widget build(BuildContext context) {
    return TextField(
              obscureText: isPassword,
              style: TextStyle(
                color: Colors.white,
              ),
              controller: ctrl,
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
                labelText: label,
                labelStyle: TextStyle(
                  color: Colors.white,    
                ),
                hintText: hint,
                hintStyle: TextStyle(
                  color: Colors.white
                )
              ),
            );
  }
}
/*end of login input boxes*/

/*login button*/
class LoginButton extends StatelessWidget {
  final invalidLoginSnackBar = SnackBar(content: Text('Wrong username or password, please try again'));
  final TextEditingController nameCtrl, passwordCtrl;
  

  LoginButton({this.nameCtrl, this.passwordCtrl});

  @override
  Widget build(BuildContext context) {
    return Builder(
                  builder: (context)=> SizedBox(
                  width: double.infinity,
                  child: RaisedButton.icon(
                  onPressed: (){
                    if(nameCtrl.text == "user" && passwordCtrl.text == "root"){
                      
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Index()),
                      );
                    }else{
                      Scaffold.of(context).showSnackBar(invalidLoginSnackBar); //notification snackbar
                    }
                    
                  }, 
                  icon: Icon(Icons.exit_to_app), 
                  label: Text("Login"),
                  color: Colors.blue,
                  textColor: Colors.white,
                  
                ),
              ),
            );
  }
}
/*end of login button*/

/*register button*/
class RegisterButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
                width: double.infinity,
                child: RaisedButton.icon(
                onPressed: (){
                  
                }, 
                icon: Icon(Icons.account_circle), 
                label: Text("Create an account"),
                color: Colors.amber,
              ),
    );
  }
}
/*end of register button*/