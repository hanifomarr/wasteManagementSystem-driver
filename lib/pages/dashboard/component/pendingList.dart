import 'package:cowmespickup/constants.dart';
import 'package:cowmespickup/pages/dashboard/bookingDetails.dart';
import 'package:flutter/material.dart';

class pendingList extends StatelessWidget {
  final booking_id;
  final address;
  final city;
  final state;
  final postcode;
  final date;
  final note;
  final status;
  final mob_cat;

  pendingList(
      {this.booking_id,
      this.address,
      this.city,
      this.state,
      this.postcode,
      this.date,
      this.note,
      this.status,
      this.mob_cat});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: EdgeInsets.only(top: 10),
        height: 140,
        child: Card(
          color: kPrimaryColor3,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Stack(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "\# ${booking_id}",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                    Text(
                      address,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Text(
                      date,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ],
                ),
                Positioned(
                  right: 0,
                  child: Container(
                    width: 90,
                    height: 20,
                    child: Text(
                      'Pending',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    decoration: new BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return bookingDetails(
              booking_id_d: booking_id,
              address_d: address,
              city_d: city,
              state_d: state,
              postcode_d: postcode,
              date_d: date,
              note_d: note,
              mob_cat_d: mob_cat);
        }));
      },
    );
  }
}
