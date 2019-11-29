import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
              ),
              accountEmail: Text("erik.antunes@live.com"),
              accountName: Text("Erik Antunes"),
            ),
            ListTile(
              title: Text("Item 1"),
            ),
            ListTile(
              title: Text("Item 2"),
            ),
            ListTile(
              title: Text("Item 3"),
            ),
            ListTile(
              title: Text("Item 4"),
            ),
            ListTile(
              title: Text("Item 5"),
            ),
          ],
        ),
      );
  }
}