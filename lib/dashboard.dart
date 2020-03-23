import 'package:flutter/material.dart';
import 'package:wejog1/settings.dart';
import 'package:wejog1/logout.dart';

class Dashboard extends StatelessWidget {
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
      drawer: NavDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.green[500],
        title: Text("WeJog"),
      ),
    );
  }
}


class NavDrawer extends StatelessWidget {

  @override

  Widget build(BuildContext context) {

    return Drawer(
      
      child: ListView(

        padding: EdgeInsets.zero,

        children: <Widget>[

          DrawerHeader(

            child: Text(

              'WeJog',

              style: TextStyle(color: Colors.white, fontSize: 25),

            ),

            decoration: BoxDecoration(

                color: Colors.green,

                ),

          ),

          

          ListTile(

            leading: Icon(Icons.verified_user),

            title: Text('Profile'),

            onTap: () {},

          ),

          ListTile(

            leading: Icon(Icons.settings),

            title: Text('Settings'),

            onTap: (){
              Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Settings()),
              );
            },

          ),

          

          ListTile(

            leading: Icon(Icons.exit_to_app),

            title: Text('Logout'),

            onTap: (){
              Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Logout()),
              );
            },

          ),

        ],

      ),

    );

  }

}