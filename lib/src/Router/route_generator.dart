import 'package:example_flutter/src/Hoc/WorkSpaceHoc.dart';
import 'package:example_flutter/src/screen/Drivers.dart';
import 'package:example_flutter/src/screen/Login.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    Map<String, dynamic> args = settings.arguments;

    int index = args != null ? args['index'] : 0;
    bool toggle = args != null ? args['toggle'] : true;

    PageRouteBuilder createRoute(Widget widget) {
      return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => WorkSpaceHoc(
                child: widget,
                index: index,
                toggle: toggle,
              ),
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              child);
    }

    switch (settings.name) {
      case '/drivers':
        return createRoute(DriversPage());
      case '/test':
        return createRoute(Text('test'));
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginPage());
      default:
        return MaterialPageRoute(builder: (_) => Text('Error'));
    }
  }
}
