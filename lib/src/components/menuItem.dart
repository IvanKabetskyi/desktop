import 'package:flutter/material.dart';

class MenuItem extends StatefulWidget {
  MenuItem({
    Key key,
    @required this.title,
    @required this.selectIndex,
    @required this.index,
    @required this.press,
    @required this.link,
    this.icon,
  }) : super(key: key);

  final String title;
  final String link;
  final int index;
  final int selectIndex;
  final Function press;
  final IconData icon;
  @override
  _MenuItemState createState() => _MenuItemState();

}


class _MenuItemState extends State<MenuItem> {
  Color hoverItem;

  @override
  void initState() {
    super.initState();
    hoverItem = Colors.transparent;
  }
  @override
  Widget build(BuildContext context) {
   return InkWell(
      onHover: (event) {
        setState(() {
          if(event){
            hoverItem = Color(0xFF2f333e);
          }else {
            hoverItem = Colors.transparent;
          }
        });
      },
      onTap: () {
        widget.press(widget.link, widget.index);
      },
      child: Container(
        color: widget.selectIndex == widget.index ? Color(0xFF2f333e) : hoverItem,
        padding: EdgeInsets.all(20.0),
        child: Row(
          children: <Widget>[
            SizedBox(
              height: 27,
              child: Padding(
                padding: EdgeInsets.only(bottom: 5.0),
                child: Icon(widget.icon, 
                  size: 24.0, 
                  color: widget.selectIndex == widget.index ? Colors.white : Color(0xFFb0bec5),
                  )
                ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(widget.title, style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: widget.selectIndex == widget.index ? Colors.white : Color(0xFFb0bec5)
                ),),
              ],
            ),)
          ],
        ),
      ),
    );
  }

}