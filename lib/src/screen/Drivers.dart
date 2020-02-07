import 'dart:convert';

import 'package:example_flutter/src/bloc/app/app_state_bloc.dart';
import 'package:example_flutter/src/bloc/drivers/drivers_state.dart';
import 'package:example_flutter/src/bloc/drivers/drivers_state_bloc.dart';
import 'package:example_flutter/src/bloc/drivers/drivers_state_event.dart';
import 'package:example_flutter/src/data/models/Drivers/drivers_state.dart';
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
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFebeff2),
        child: ListView(
          padding:
              EdgeInsets.only(top: 80.0, left: 35.0, right: 35.0, bottom: 20.0),
          children: <Widget>[
            HeaderDrivers(),
            BlocBuilder<DriversBloc, DriversState>(
              builder: (context, state) {
                if (state is DriversInitialState) {
                  return Text('company, email, password Loading........');
                } else if (state is DriversLoadingState) {
                  return Text('AppLoadingState Loading........');
                } else if (state is DriversErrorState) {
                  return Text(state.message);
                }

                return Column(
                  children: state.drivers
                      .map((driver) => ItemDrivers(
                          type: '${driver.isOwner ? "(o/d)" : "(dr)"}',
                          mobile: driver.mobilePhone,
                          email: driver.email,
                          app: driver.mobileApp,
                          home:
                              '${driver.addressLine}\n${driver.city}, ${driver.state} ${driver.zip}',
                          truck: driver.truck != null
                              ? '${driver.truck.number}\n${driver.owner.firstName} ${driver.owner.lastName}'
                              : driver.owner != null
                                  ? '${driver.owner.firstName} ${driver.owner.lastName}'
                                  : '',
                          name: '${driver.firstName} ${driver.lastName}'))
                      .toList(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  void getListDrivers() async {
    driversBloc.add(new GetDrivers(
        page: page, perPage: perPage, accessToken: appBloc.state.accessToken));
  }
}

class HeaderDrivers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 61.0,
      decoration: BoxDecoration(
          color: Color(0xFFf7f9f8),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5), topRight: Radius.circular(5))),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
              child: Text(
                'TYPE',
                style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF84939a)),
              ),
            ),
            flex: 84,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
              child: Text(
                'NAME',
                style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF84939a)),
              ),
            ),
            flex: 251,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
              child: Text(
                'MOBILE PHONE',
                style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF84939a)),
              ),
            ),
            flex: 208,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
              child: Text(
                'EMAIL',
                style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF84939a)),
              ),
            ),
            flex: 347,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
              child: Text(
                'APP',
                style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF84939a)),
              ),
            ),
            flex: 74,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
              child: Text(
                'HOME ADDRESS',
                style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF84939a)),
              ),
            ),
            flex: 331,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
              child: Text(
                'ON TRUCK AND OWNER',
                style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF84939a)),
              ),
            ),
            flex: 250,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
              child: Text(
                'ACTIONS',
                style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF84939a)),
              ),
            ),
            flex: 151,
          ),
        ],
      ),
    );
  }
}

class ItemDrivers extends StatelessWidget {
  ItemDrivers(
      {Key key,
      @required this.type,
      @required this.mobile,
      @required this.email,
      @required this.app,
      @required this.home,
      @required this.truck,
      @required this.name})
      : super(key: key);

  final String type;
  final String mobile;
  final String email;
  final bool app;
  final String home;
  final String truck;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 61.0,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5), topRight: Radius.circular(5))),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              height: 61.0,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: Color(0xFFeceff1), width: 1),
                  right: BorderSide(color: Color(0xFFeceff1), width: 1),
                  bottom: BorderSide(color: Color(0xFFeceff1), width: 1),
                ),
              ),
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
              child: Center(
                child: Text(
                  type,
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF2f333e)),
                ),
              ),
            ),
            flex: 84,
          ),
          Expanded(
            child: Container(
              height: 61.0,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFeceff1), width: 1),
              ),
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  name,
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF353a45)),
                ),
              ),
            ),
            flex: 251,
          ),
          Expanded(
            child: Container(
              height: 61.0,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFeceff1), width: 1),
              ),
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  mobile,
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF353a45)),
                ),
              ),
            ),
            flex: 208,
          ),
          Expanded(
            child: Container(
              height: 61.0,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFeceff1), width: 1),
              ),
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  email,
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF353a45)),
                ),
              ),
            ),
            flex: 347,
          ),
          Expanded(
            child: Container(
              height: 61.0,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFeceff1), width: 1),
              ),
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  app.toString(),
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF353a45)),
                ),
              ),
            ),
            flex: 74,
          ),
          Expanded(
            child: Container(
              height: 61.0,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFeceff1), width: 1),
              ),
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  home,
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF353a45)),
                ),
              ),
            ),
            flex: 331,
          ),
          Expanded(
            child: Container(
              height: 61.0,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFeceff1), width: 1),
              ),
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  truck,
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF353a45)),
                ),
              ),
            ),
            flex: 250,
          ),
          Expanded(
            child: Container(
              height: 61.0,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: Color(0xFFeceff1), width: 1),
                  left: BorderSide(color: Color(0xFFeceff1), width: 1),
                  bottom: BorderSide(color: Color(0xFFeceff1), width: 1),
                ),
              ),
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'ACTIONS',
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF353a45)),
                ),
              ),
            ),
            flex: 151,
          ),
        ],
      ),
    );
  }
}
