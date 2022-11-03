import 'package:cowmespickup/constants.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SideDrawer extends StatefulWidget {
  @override
  _SideDrawerState createState() => _SideDrawerState();
}

class _SideDrawerState extends State<SideDrawer> {
  var username;
  var email;
  bool isSignIn = false;
  getPref() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    username = preferences.getString("username");
    email = preferences.getString("email");

    if (username != null) {
      setState(() {
        username = preferences.getString("username");
        email = preferences.getString("email");
        isSignIn = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                accountEmail: isSignIn
                    ? Text(email)
                    : Text("", style: TextStyle(color: kPrimaryColor2)),
                accountName:
                    Text('Seman Omar', style: TextStyle(color: kPrimaryColor2)),
                otherAccountsPictures: [
                  IconButton(
                    icon: Icon(Icons.exit_to_app),
                    onPressed: () {},
                  ),
                ],
                currentAccountPicture: CircleAvatar(
                  backgroundColor: kPrimaryColor2,
                  backgroundImage: NetworkImage(''),
                ),
              ),
              ListTile(
                title: Text('Dashboard'),
                leading: Icon(Icons.dashboard),
                onTap: () => Navigator.popAndPushNamed(
                  context,
                  '/home',
                ),
              ),
              ListTile(
                title: Text('Profile'),
                leading: Icon(Icons.person),
                onTap: () => Navigator.pushReplacementNamed(
                  context,
                  'home',
                ),
              ),
              ListTile(
                title: Text('FAQ'),
                leading: Icon(Icons.question_answer),
                onTap: () => Navigator.pushReplacementNamed(
                  context,
                  'home',
                ),
              ),
              ListTile(
                title: Text('Contact Us '),
                leading: Icon(Icons.phone),
                onTap: () => Navigator.pushReplacementNamed(
                  context,
                  'home',
                ),
              ),
              ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings),
                onTap: () => Navigator.pushNamed(
                  context,
                  'settings',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
