import 'package:cowmespickup/pages/startPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cowmespickup/constants.dart';

class completeDetails extends StatefulWidget {
  final booking_id_d;
  final address_d;
  final city_d;
  final state_d;
  final postcode_d;
  final date_d;
  final note_d;
  final status_d;
  final mob_cat_d;

  completeDetails(
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
  _completeDetailsState createState() => _completeDetailsState();
}

class _completeDetailsState extends State<completeDetails> {
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
            heading3(),
            recyclingDetails(),
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
              "#3000011213",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "22/10/2020",
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

  Widget heading3() {
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
              "Recycling Details",
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
            "No. 1, Jalan Penaga 4,",
            style: TextStyle(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          Text(
            "Butterworth",
            style: TextStyle(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          Text(
            "45000 Pulau Pinang",
            style: TextStyle(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
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
              fontSize: 20, color: kPrimaryColor2, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "22/10.2020",
          style: TextStyle(
              fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Note",
          style: TextStyle(
              fontSize: 20, color: kPrimaryColor2, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Please call before coming to my house",
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

Widget recyclingDetails() {
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
          "Weight (kg)",
          style: TextStyle(
              fontSize: 20, color: kPrimaryColor2, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "15 kg",
          style: TextStyle(
              fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Status",
          style: TextStyle(
              fontSize: 20, color: kPrimaryColor2, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Successful",
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
