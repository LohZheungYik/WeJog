import 'package:flutter/material.dart';
import 'package:wejog1/widgets/inputBoxStyle.dart';


/*Profile picture container*/
class ProfilePicture extends StatelessWidget {
  
  final String child;
  ProfilePicture({this.child});
  
  @override
  Widget build(BuildContext context) {
    return Container(   
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/avatar.png'),
               )
              ),
             );
  }
}
/*Profile picture container end*/

/*user info title*/
class ProfileTitle extends StatelessWidget {  
  final String child;
  ProfileTitle({this.child});

  @override
  Widget build(BuildContext context) {
    return Text(child, style: 
              TextStyle(
                color: Colors.white
              ),
    );
  }
}
/*user info title end*/

/*User info content*/
class ProfileInfo extends StatelessWidget {
  final String child;
  ProfileInfo({this.child});

  @override
  Widget build(BuildContext context) {
    return Text(child, 
      style: TextStyle(
              fontSize: 26,
              color: Colors.white
             ),
            );
  }
}
/*User info content end*/

/*Input box for updating profile information*/
class InputBox extends StatelessWidget {
  final value, title, hint;
  InputBox({this.value, this.title, this.hint});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(
        color: Colors.black,
      ),
      initialValue: value.toString(),
      decoration: InputDeco.profileInputDeco(title, hint, Colors.green[500]),
    );
  }
}
/*end of Input box for updating profile information*/