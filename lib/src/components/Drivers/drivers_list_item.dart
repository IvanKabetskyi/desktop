import 'package:example_flutter/src/components/action_button.dart';
import 'package:flutter/material.dart';

class ItemDrivers extends StatefulWidget {
  ItemDrivers(
      {Key key,
      @required this.type,
      @required this.mobile,
      @required this.email,
      @required this.app,
      @required this.home,
      this.truck,
      this.owner,
      @required this.name})
      : super(key: key);

  final String type;
  final String mobile;
  final String email;
  final IconData app;
  final String home;
  final String truck;
  final String name;
  final String owner;

  _ItemDriversState createState() => _ItemDriversState();
}

class _ItemDriversState extends State<ItemDrivers> {
  bool isNameHover;
  bool isTruckHover;
  bool isOwnerHover;

  @override
  void initState() {
    super.initState();
    isNameHover = false;
    isTruckHover = false;
    isOwnerHover = false;
  }

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
                  widget.type,
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
                child: InkWell(
                  onHover: (value) {
                    setState(() {
                      isNameHover = value;
                    });
                  },
                  onTap: () {
                    print('TAP');
                  },
                  child: Text(
                    widget.name,
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF353a45),
                        decoration: isNameHover
                            ? TextDecoration.none
                            : TextDecoration.underline,
                        decorationStyle: TextDecorationStyle.dashed,
                        decorationColor: Color(0xFF353a45),
                        decorationThickness: 2.0),
                  ),
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
                  widget.mobile,
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
                  widget.email,
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
                  widget.app,
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
                  widget.home,
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  widget.truck != null
                      ? InkWell(
                          onHover: (value) {
                            setState(() {
                              isTruckHover = value;
                            });
                          },
                          onTap: () {
                            print('TAP');
                          },
                          child: Text(
                            widget.truck,
                            style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF353a45),
                                decoration: isTruckHover
                                    ? TextDecoration.none
                                    : TextDecoration.underline,
                                decorationStyle: TextDecorationStyle.dashed,
                                decorationColor: Color(0xFF353a45),
                                decorationThickness: 2.0),
                          ),
                        )
                      : Container(),
                  widget.owner != null
                      ? InkWell(
                          onHover: (value) {
                            setState(() {
                              isOwnerHover = value;
                            });
                          },
                          onTap: () {
                            print('TAP');
                          },
                          child: Text(
                            widget.owner,
                            style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF353a45),
                                decoration: isOwnerHover
                                    ? TextDecoration.none
                                    : TextDecoration.underline,
                                decorationStyle: TextDecorationStyle.dashed,
                                decorationColor: Color(0xFF353a45),
                                decorationThickness: 2.0),
                          ),
                        )
                      : Container(),
                ],
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                      width: 32.0,
                      height: 32.0,
                      child: ActionButton(icon: Icons.visibility)),
                  SizedBox(
                      width: 32.0,
                      height: 32.0,
                      child: ActionButton(icon: Icons.create)),
                  SizedBox(
                      width: 32.0,
                      height: 32.0,
                      child: ActionButton(icon: Icons.delete_forever)),
                ],
              ),
            ),
            flex: 151,
          ),
        ],
      ),
    );
  }
}
