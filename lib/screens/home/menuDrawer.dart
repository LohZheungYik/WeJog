import 'package:flutter/material.dart';
import 'package:wejog1/widgets/menuWidgets.dart';

class NavDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Drawer(  
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            MenuHeader(), //menu header that contain username
            MenuItemList(), //menu items
         ],
        ),
       ),
      );
    }
 }

