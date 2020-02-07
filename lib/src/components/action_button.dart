import 'package:flutter/material.dart';

class ActionButton extends StatefulWidget {
  ActionButton({Key key, @required this.icon}) : super(key: key);

  final IconData icon;
  _ActionButtonState createState() => _ActionButtonState();
}

class _ActionButtonState extends State<ActionButton> {
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        child: Center(
          child: Icon(
            widget.icon,
            size: 18.0,
            color: Color(0xFF84939a),
          ),
        ),
        onPressed: () {
          print('PRESS');
        },
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(4))),
        fillColor: Color(0xFFebeff2),
        splashColor: Color(0xFFb0bec6));
  }
}
