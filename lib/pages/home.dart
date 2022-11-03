import 'package:cowmespickup/constants.dart';
import 'package:cowmespickup/pages/dashboard/pending.dart';
import 'package:cowmespickup/pages/dashboard/complete.dart';
import 'package:cowmespickup/widget/SideDrawer.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: kPrimaryColor2,
            title: Text('Hi Seman'),
            bottom: TabBar(
              tabs: [
                Tab(
                  text: 'Pending (13)',
                ),
                Tab(
                  text: 'Completed (42)',
                ),
              ],
            ),
          ),
          drawer: SideDrawer(),
          body: TabBarView(
            children: [
              PendingPage(),
              SuccessfulPage(),
            ],
          )),
    );
  }
}
