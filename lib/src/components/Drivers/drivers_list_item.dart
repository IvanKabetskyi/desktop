import 'package:flutter/material.dart';

class ItemDrivers extends StatelessWidget {
  ItemDrivers(
      {Key key,
      @required this.type,
      @required this.mobile,
      @required this.email,
      @required this.app,
      @required this.home,
      @required this.truck,
      @required this.name})
      : super(key: key);

  final String type;
  final String mobile;
  final String email;
  final IconData app;
  final String home;
  final String truck;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 61.0,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5), topRight: Radius.circular(5))),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              height: 61.0,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: Color(0xFFeceff1), width: 1),
                  right: BorderSide(color: Color(0xFFeceff1), width: 1),
                  bottom: BorderSide(color: Color(0xFFeceff1), width: 1),
                ),
              ),
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
              child: Center(
                child: Text(
                  type,
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF2f333e)),
                ),
              ),
            ),
            flex: 84,
          ),
          Expanded(
            child: Container(
              height: 61.0,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFeceff1), width: 1),
              ),
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  name,
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF353a45)),
                ),
              ),
            ),
            flex: 251,
          ),
          Expanded(
            child: Container(
              height: 61.0,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFeceff1), width: 1),
              ),
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  mobile,
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF353a45)),
                ),
              ),
            ),
            flex: 208,
          ),
          Expanded(
            child: Container(
              height: 61.0,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFeceff1), width: 1),
              ),
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  email,
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF353a45)),
                ),
              ),
            ),
            flex: 347,
          ),
          Expanded(
            child: Container(
              height: 61.0,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFeceff1), width: 1),
              ),
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
              child: Align(
                alignment: Alignment.center,
                child: Icon(
                  app,
                  color: Color(0xFF84939a),
                  size: 14.0,
                ),
              ),
            ),
            flex: 74,
          ),
          Expanded(
            child: Container(
              height: 61.0,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFeceff1), width: 1),
              ),
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  home,
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF353a45)),
                ),
              ),
            ),
            flex: 331,
          ),
          Expanded(
            child: Container(
              height: 61.0,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFeceff1), width: 1),
              ),
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  truck,
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF353a45)),
                ),
              ),
            ),
            flex: 250,
          ),
          Expanded(
            child: Container(
              height: 61.0,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: Color(0xFFeceff1), width: 1),
                  left: BorderSide(color: Color(0xFFeceff1), width: 1),
                  bottom: BorderSide(color: Color(0xFFeceff1), width: 1),
                ),
              ),
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'ACTIONS',
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF353a45)),
                ),
              ),
            ),
            flex: 151,
          ),
        ],
      ),
    );
  }
}
