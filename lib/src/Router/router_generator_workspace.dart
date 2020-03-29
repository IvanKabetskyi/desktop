import 'package:example_flutter/src/screen/Drivers/DriversPage.dart';
import 'package:flutter/material.dart';

class RouteGeneratorWorkSpace {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'app/drivers':
        return PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) =>
                DriversPage(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) => child);
      case 'app/test':
        return PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) =>
                Text('test'),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) => child);
      default:
        throw Exception('Innitial route: ${settings.name}');
    }
  }
}
