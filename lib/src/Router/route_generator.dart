import 'package:example_flutter/src/Hoc/WorkSpaceHoc.dart';
import 'package:example_flutter/src/screen/Login.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    Map<String, dynamic> args = settings.arguments;

    print(args.toString());
    print(settings.name);

    switch (settings.name) {
      case '/app':
        return MaterialPageRoute(builder: (_) => WorkSpaceHoc());
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginPage());
      default:
        return MaterialPageRoute(builder: (_) => Text('Error'));
    }
  }
}
