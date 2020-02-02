
import 'package:flutter/material.dart';

class CheckBox extends StatefulWidget {
  CheckBox({Key key, @required this.value, @required this.tapEvent}) : super(key: key);

  final bool value;
  final Function tapEvent;

  @override
  _CheckBoxState createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 25,
          height: 25,
          child: InkWell(
            onTap: widget.tapEvent,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(3)),
                border: Border.all(color: Color(0xFFb0bec6))
              ),
              child: widget.value 
                ? Icon(
                  Icons.check,
                  color: Color(0xFFb0bec6),
                ) : null,
            ),
          ),
        ),
        SizedBox(width: 10,),
        InkWell(
          onTap: widget.tapEvent,
          child: Text('Remeber me', style: TextStyle(
            color: Color(0xFF2f333e),
            fontWeight: FontWeight.w400,
            fontSize: 14.0
          ),),
        ),
      ],
    );
  }

}