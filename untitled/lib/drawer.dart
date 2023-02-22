import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class drawer extends StatelessWidget {
  GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(),
      drawerScrimColor: Colors.blue.withOpacity(.3),
      endDrawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Ahmed Helmy'),
              accountEmail: Text('ahmedhelmy1632000@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.red,
                child: Text('A'),
              ),
            ),
            ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home),
              onTap: () {},
            ),
            ListTile(
              title: Text('Help'),
              leading: Icon(Icons.help),
              onTap: () {},
            ),
            ListTile(
              title: Text('About'),
              leading: Icon(Icons.help_center),
              onTap: () {},
            ),
            ListTile(
              title: Text('Logout'),
              leading: Icon(Icons.logout),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsetsDirectional.all(10),
          child: MaterialButton(
            onPressed: () {
              scaffoldKey.currentState?.openEndDrawer();
            },
            child: Text('Open Drawer'),
          ),
        ),
      ),
    );
  }
}
