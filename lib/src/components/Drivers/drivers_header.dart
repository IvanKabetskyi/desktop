import 'package:flutter/material.dart';

class HeaderDrivers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 61.0,
      decoration: BoxDecoration(
          color: Color(0xFFf7f9f8),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5), topRight: Radius.circular(5))),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
              child: Text(
                'TYPE',
                style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF84939a)),
              ),
            ),
            flex: 84,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
              child: Text(
                'NAME',
                style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF84939a)),
              ),
            ),
            flex: 251,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
              child: Text(
                'MOBILE PHONE',
                style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF84939a)),
              ),
            ),
            flex: 208,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
              child: Text(
                'EMAIL',
                style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF84939a)),
              ),
            ),
            flex: 347,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
              child: Text(
                'APP',
                style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF84939a)),
              ),
            ),
            flex: 74,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
              child: Text(
                'HOME ADDRESS',
                style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF84939a)),
              ),
            ),
            flex: 331,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
              child: Text(
                'ON TRUCK AND OWNER',
                style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF84939a)),
              ),
            ),
            flex: 250,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
              child: Text(
                'ACTIONS',
                style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF84939a)),
              ),
            ),
            flex: 151,
          ),
        ],
      ),
    );
  }
}
