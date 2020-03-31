import 'package:flutter/material.dart';
import 'package:wejog1/screens/login/login.dart';

class Logout extends StatefulWidget {
  const Logout({Key key}) : super(key: key);
  @override
    _LogoutState createState() => _LogoutState();
}

class _LogoutState extends State<Logout> {
  var _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text('Logged out successfully!'))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.green[500],
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
            Image.asset('assets/images/logo.png'),
            SizedBox(
              height: 30
            ),
            Text("You have been logged out"),
            SizedBox(
              height: 4
            ),
            Text("Thank you for exercising with WeJog"),
            SizedBox(
              height: 2
            ),         
            SizedBox(
                width: double.infinity,
                child: RaisedButton.icon(
                onPressed: (){          
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                    );                
                }, 
                icon: Icon(Icons.account_circle), 
                label: Text("Go to login page"),
                color: Colors.amber,
              ),
            )          
          ],
        ),
      )
    );
  }
}

