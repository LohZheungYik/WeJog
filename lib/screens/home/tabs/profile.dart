import 'package:flutter/material.dart';
import 'package:wejog1/model/user.dart';
import 'package:wejog1/screens/home/app_bar.dart';
import 'package:wejog1/widgets/profileWidgets.dart';

class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  User user = new User();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WeJogAppBars.backBtnAppBar(context, "My Profile"),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              UserInfo(),  
              ProfileContents(),
            ],
          ),
        )
      ),
    );
   }
  }

/*Upper part of profile page - user info*/
class UserInfo extends StatelessWidget {
  const UserInfo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    User user = new User();
    return Container(
                padding: EdgeInsets.fromLTRB(25,0,0,0),
                color: Colors.green[500],
                height: 170,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget> [
                        ProfilePicture(child: 'assets/avatar.png'),
                        Expanded(
                          child: Container(
                            child: Column(
                            children: <Widget>[
                              ProfileTitle(child: "Full Name"),
                              ProfileInfo(child: user.fullName),              
                          ],
                        ),
                      ),
                    )
                ]
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                      children: <Widget>[
                        ProfileTitle(child: "Rank"),
                        ProfileInfo(child: user.rank), 
                      ],
                    ),
                  ),

              Expanded(
                flex: 2,             
                child: Column(
                children: <Widget>[
                  ProfileTitle(child: "Jogging Frequency"),
                  ProfileInfo(child: user.frequency),
                ],
                ),
              ),   
            ],
          ),
        ],
      )
    );
  }
}
/*user info end*/

/*User profile information*/
class ProfileContents extends StatelessWidget {
  const ProfileContents({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    User user = new User();
    return Column(
      children: <Widget>[
        SizedBox(height: 15,),  
        InputBox(value: user.location, title: "Location", hint: "Please enter your location"),
        SizedBox(height: 15,),
        InputBox(value: user.nationality, title: "Nationality", hint: "Please enter your nationality"),
        SizedBox(height: 15,),
        InputBox(value: user.email, title: "E-mail", hint: "Please enter your e-mail"),
        SizedBox(height: 15,),
        InputBox(value: user.age, title: "Age", hint: "Please enter your age"),
        SizedBox(height: 15,),
        InputBox(value: user.weight, title: "Weight (kg)", hint: "Please enter your weight"),
        SizedBox(height: 15,),
        InputBox(value: user.height, title: "Height (cm)", hint: "Please enter your height"),
    ],
  ); 
}
}
/*User profile information end*/

