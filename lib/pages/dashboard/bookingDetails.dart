import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cowmespickup/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class bookingDetails extends StatefulWidget {
  final booking_id_d;
  final address_d;
  final city_d;
  final state_d;
  final postcode_d;
  final date_d;
  final note_d;
  final status_d;
  final mob_cat_d;

  bookingDetails(
      {this.booking_id_d,
      this.address_d,
      this.city_d,
      this.state_d,
      this.postcode_d,
      this.date_d,
      this.note_d,
      this.status_d,
      this.mob_cat_d});

  @override
  _bookingDetailsState createState() => _bookingDetailsState();
}

class _bookingDetailsState extends State<bookingDetails> {
  void customLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print(' could not launch $command');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: kPrimaryColor2,
        elevation: 0,
        leading: IconButton(
          padding: EdgeInsets.only(left: 0),
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Booking Summary",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Header(),
            heading1(),
            customerInfo(),
            heading2(),
            bookingInfo(),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.only(left: 25, right: 25),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      flex: 3,
                      child: Container(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: RaisedButton(
                          elevation: 0.0,
                          color: kPrimaryColor2,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.horizontal(
                                  left: Radius.circular(15),
                                  right: Radius.circular(15))),
                          child: Padding(
                            padding: EdgeInsets.all(16),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Confirm Pickup",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: RaisedButton(
                        elevation: 0.0,
                        color: kPrimaryColor2,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(15),
                                right: Radius.circular(15))),
                        child: Padding(
                          padding: EdgeInsets.all(12),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.call,
                                color: Colors.white,
                                size: 30.0,
                              ),
                            ],
                          ),
                        ),
                        onPressed: () {
                          customLaunch('tel:+1 555 555 555');
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }

  Widget Header() {
    return Container(
      width: double.infinity,
      height: 110,
      padding: EdgeInsets.only(top: 20, left: 25, bottom: 20),
      decoration: BoxDecoration(
        color: kPrimaryColor2,
      ),
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "\# ${widget.booking_id_d}",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              widget.date_d,
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  Widget heading1() {
    return Container(
      width: double.infinity,
      height: 53,
      padding: EdgeInsets.only(top: 15, left: 25),
      decoration: BoxDecoration(
        color: Colors.grey[200],
      ),
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Customer Information",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[600],
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  Widget heading2() {
    return Container(
      width: double.infinity,
      height: 53,
      padding: EdgeInsets.only(top: 15, left: 25),
      decoration: BoxDecoration(
        color: Colors.grey[200],
      ),
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Booking Information",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[600],
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  Widget customerInfo() {
    return Container(
      width: double.infinity,
      height: 280,
      padding: EdgeInsets.only(top: 15, left: 25),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Name",
            style: TextStyle(
                fontSize: 20,
                color: kPrimaryColor2,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Hanif Omar",
            style: TextStyle(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Phone Number",
            style: TextStyle(
                fontSize: 20,
                color: kPrimaryColor2,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "+60132847103",
            style: TextStyle(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Address",
            style: TextStyle(
                fontSize: 20,
                color: kPrimaryColor2,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            widget.address_d,
            style: TextStyle(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          Text(
            widget.city_d,
            style: TextStyle(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          Text(
            widget.state_d,
            style: TextStyle(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget bookingInfo() {
    return Container(
      width: double.infinity,
      height: 170,
      padding: EdgeInsets.only(top: 15, left: 25),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Date",
            style: TextStyle(
                fontSize: 20,
                color: kPrimaryColor2,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            widget.date_d,
            style: TextStyle(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Note",
            style: TextStyle(
                fontSize: 20,
                color: kPrimaryColor2,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            widget.note_d,
            style: TextStyle(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
