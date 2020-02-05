import 'package:example_flutter/src/screen/Login.dart';
import 'package:example_flutter/src/screen/WorkSpaceHoc.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    print(args.toString());

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => WorkSpaceHoc());
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginPage());
      default:
        return MaterialPageRoute(builder: (_) => Text('Error'));
    }
  }
}
