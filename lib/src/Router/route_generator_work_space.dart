import 'package:example_flutter/src/screen/Drivers.dart';
import 'package:flutter/material.dart';

class RouteGeneratorWorkSpace {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    print(args.toString());

    switch (settings.name) {
      case '/drivers':
        return MaterialPageRoute(builder: (_) => DriversPage());
      default:
        return MaterialPageRoute(builder: (_) => Text('Error'));
    }
  }
}
