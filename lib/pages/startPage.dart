import 'package:cowmespickup/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:cowmespickup/animation/FadeAnimation.dart';
import 'package:cowmespickup/pages/login.dart';
import 'package:cowmespickup/pages/signup.dart';

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor2,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              FadeAnimation(
                  1.1,
                  Container(
                    height: MediaQuery.of(context).size.height / 1.8,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/logo2.png'))),
                  )),
              Column(
                children: <Widget>[
                  FadeAnimation(
                      1.2,
                      MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()));
                        },
                        elevation: 0,
                        color: kSecondaryColor2,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: kSecondaryColor2),
                            borderRadius: BorderRadius.circular(25)),
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: kPrimaryColor2),
                        ),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  FadeAnimation(
                      1.3,
                      Container(
                        child: MaterialButton(
                          minWidth: double.infinity,
                          height: 60,
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignupPage()));
                          },
                          color: kPrimaryColor2,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: kSecondaryColor2),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Text(
                            "Sign up",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: kSecondaryColor2),
                          ),
                        ),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
