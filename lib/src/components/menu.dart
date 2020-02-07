import 'package:example_flutter/src/components/menuItem.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  Menu({Key key, @required this.widthMenu, @required this.widthTextMenu})
      : super(key: key);

  final double widthMenu;
  final double widthTextMenu;

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  List<Map<String, dynamic>> _menu;
  int selectIndex;

  @override
  void initState() {
    super.initState();

    selectIndex = 0;

    _menu = [
      {
        'icon': Icons.directions_car,
        'title': 'DRIVERS',
        'link': '/drivers',
      },
      {
        'icon': Icons.directions_car,
        'title': 'test',
        'link': '/test',
      },
      {
        'icon': Icons.power_settings_new,
        'title': 'LOG OUT',
        'link': '/login',
      }
    ];
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      width: widget.widthMenu, //small 64
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 18.0),
            color: Color(0xFF039be5),
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  'd',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                      color: Colors.white),
                ),
                AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    width: widget.widthTextMenu,
                    child: Text(
                      'ispatchlan',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                          color: Colors.white),
                    )),
                Text(
                  'd',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                      color: Colors.white),
                )
              ],
            ),
          ),
          Expanded(
              child: FractionallySizedBox(
            widthFactor: 1.0,
            heightFactor: 1.0,
            child: Container(
              color: Color(0xFF353a45),
              child: ListView(
                children: _menu
                    .asMap()
                    .map((index, value) =>
                        MapEntry(index, _buildMenu(index, value)))
                    .values
                    .toList(),
              ),
            ),
          ))
        ],
      ),
    );
  }

  Widget _buildMenu(int index, Map<String, dynamic> item) {
    return MenuItem(
      title: item['title'],
      icon: item['icon'],
      link: item['link'],
      index: index,
      selectIndex: selectIndex,
      press: handleLinkTo,
      widthItem: widget.widthMenu == 240.0,
    );
  }

  void handleLinkTo(String link, int setIndex) {
    setState(() {
      selectIndex = setIndex;
    });
    Navigator.pushNamed(context, link);
  }
}
