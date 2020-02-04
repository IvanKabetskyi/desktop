import 'package:example_flutter/src/bloc/app/app_state_bloc.dart';
import 'package:example_flutter/src/data/repositories/user_repositore.dart';
import 'package:example_flutter/src/screen/Login.dart';
import 'package:example_flutter/src/screen/WorkSpaceHoc.dart';
import 'package:flutter/foundation.dart'
    show debugDefaultTargetPlatformOverride;
// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

import 'package:flutter/foundation.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

//color #3fc4ff

void main() async {
  debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;

  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AppBloc>(
          create: (BuildContext context) =>
              AppBloc(repository: new AppRepositoryImpl()),
        )
      ],
      child: MaterialApp(
        routes: {
          '/': (context) => WorkSpaceHoc(),
          '/login': (context) => LoginPage(),
        },
        debugShowCheckedModeBanner: false,
        initialRoute: '/login',
      ),
    );
  }
}
