import 'package:cowmespickup/pages/dashboard/component/completedList.dart';
import 'package:cowmespickup/pages/dashboard/component/pendingList.dart';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:cowmespickup/constants.dart';
import 'dart:convert';

class SuccessfulPage extends StatefulWidget {
  @override
  _SuccessfulPageState createState() => _SuccessfulPageState();
}

class _SuccessfulPageState extends State<SuccessfulPage> {
  Future getData() async {
    var url = "http://192.168.0.177/cowmes/pickupStaff/index.php";
    var data = {"cat": "2"};
    var response = await http.post(url, body: data);
    var responsebody = jsonDecode(response.body);
    return responsebody;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor2,
      body: FutureBuilder(
        future: getData(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context, i) {
                return completedList(
                    booking_id: snapshot.data[i]['booking_id'],
                    address: snapshot.data[i]['address'],
                    city: snapshot.data[i]['city'],
                    state: snapshot.data[i]['state'],
                    postcode: snapshot.data[i]['postcode'],
                    date: snapshot.data[i]['date'],
                    note: snapshot.data[i]['note'],
                    status: snapshot.data[i]['status'],
                    mob_cat: snapshot.data[i]['mob_cat']);
              },
            );
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
