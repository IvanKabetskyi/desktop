

import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  
  Button({Key key, @required this.label, @required this.press, this.icon}) : super(key: key);

  final IconData icon;
  final String label;
  final Function press;
  
  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: 7.0,
            horizontal: 70.0,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(widget.label, style: TextStyle(color: Colors.white, fontSize: 16)),
            _icon()
          ],
        ),
      ),
      onPressed: widget.press,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(4))
      ),
      fillColor: Color(0xFF3fc4ff),
      splashColor: Color.fromRGBO(63,196,255,.8),
    );
  }

  Row _icon(){
    if(widget.icon != null){
      return Row(
        children: <Widget>[
          SizedBox(width: 8.0),
          Icon(
            widget.icon,
            color: Colors.white,
            size: 11,
          ),
        ],
      );
    }
    return null;
  }
}