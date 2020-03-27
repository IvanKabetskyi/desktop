import 'dart:io';

import 'package:example_flutter/src/Router/route_generator.dart';
import 'package:example_flutter/src/redux/index.dart';
import 'package:example_flutter/src/redux/models/app_state.dart';
import 'package:flutter/foundation.dart'
    show debugDefaultTargetPlatformOverride;
// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';

import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';

//color #3fc4ff

void main() async {
  debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  Directory current = Directory.current;
  print(current.toString());
  Hive.init(current.toString());
  Store<AppState> store = getStore();
  runApp(new MyApp(store: store));

  await Hive.openBox('myBox');
  var box = Hive.box('myBox');

  // box.put('name', 'Ivan');

  var name = box.get('name');

  print(name.toString());
}

class MyApp extends StatelessWidget {
  final Store<AppState> store;
  MyApp({this.store});

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        onGenerateRoute: RouteGenerator.generateRoute,
        debugShowCheckedModeBanner: false,
        initialRoute: '/login',
      ),
    );
  }
}
