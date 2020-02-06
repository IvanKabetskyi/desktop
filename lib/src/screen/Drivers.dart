import 'package:example_flutter/src/bloc/app/app_state_bloc.dart';
import 'package:example_flutter/src/bloc/drivers/drivers_state_bloc.dart';
import 'package:example_flutter/src/bloc/drivers/drivers_state_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DriversPage extends StatefulWidget {
  _DriversState createState() => _DriversState();
}

class _DriversState extends State<DriversPage> {
  int page;
  int perPage;
  DriversBloc driversBloc;
  AppBloc appBloc;
  @override
  void initState() {
    super.initState();
    page = 1;
    perPage = 50;

    driversBloc = BlocProvider.of<DriversBloc>(context);
    appBloc = BlocProvider.of<AppBloc>(context);
    getListDrivers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('DRIVERS'),
    );
  }

  void getListDrivers() async {
    driversBloc.add(new GetDrivers(
        page: page, perPage: perPage, accessToken: appBloc.state.accessToken));
  }
}
