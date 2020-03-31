import 'package:flutter/material.dart';
import 'package:wejog1/screens/home/menuDrawer.dart';

class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  var _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text('Logged in successfully! Welcome!'))));
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: NavDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.green[500],
        title: Text("WeJog"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Dashboard to be added here"),
            Text("Please open menu drawer"),
          ],
        )
      )
    );
  }
}



