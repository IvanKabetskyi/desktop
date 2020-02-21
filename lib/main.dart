import 'dart:io';

import 'package:example_flutter/src/Router/route_generator.dart';
import 'package:example_flutter/src/bloc/app/app_state_bloc.dart';
import 'package:example_flutter/src/bloc/drivers/drivers_state_bloc.dart';
import 'package:example_flutter/src/data/repositories/drivers_repositore.dart';
import 'package:example_flutter/src/data/repositories/user_repositore.dart';
import 'package:flutter/foundation.dart'
    show debugDefaultTargetPlatformOverride;
// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

import 'package:flutter/foundation.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

//color #3fc4ff

void main() async {
  debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  Directory current = Directory.current;
  print(current.toString());
  Hive.init(current.toString());
  runApp(new MyApp());

  await Hive.openBox('myBox');
  var box = Hive.box('myBox');

  // box.put('name', 'Ivan');

  var name = box.get('name');

  print(name.toString());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AppBloc>(
          create: (BuildContext context) =>
              AppBloc(repository: new AppRepositoryImpl()),
        ),
        BlocProvider<DriversBloc>(
          create: (BuildContext context) =>
              DriversBloc(repository: new DriversRepositoryImpl()),
        ),
      ],
      child: MaterialApp(
        onGenerateRoute: RouteGenerator.generateRoute,
        debugShowCheckedModeBanner: false,
        initialRoute: '/login',
      ),
    );
  }
}
