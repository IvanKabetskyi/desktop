import 'package:example_flutter/src/bloc/app/app_state_bloc.dart';
import 'package:example_flutter/src/bloc/drivers/drivers_state.dart';
import 'package:example_flutter/src/bloc/drivers/drivers_state_bloc.dart';
import 'package:example_flutter/src/bloc/drivers/drivers_state_event.dart';
import 'package:example_flutter/src/components/Drivers/drivers_header.dart';
import 'package:example_flutter/src/components/Drivers/drivers_list_item.dart';
import 'package:example_flutter/src/data/models/Drivers/driver.dart';
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
                      .map((driver) => createDriverItem(driver))
                      .toList(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  ItemDrivers createDriverItem(Driver driver) {
    String type = '${driver.isOwner ? "(o/d)" : "(dr)"}';
    String mobile = driver.mobilePhone;
    String email = driver.email;
    String home =
        '${driver.addressLine}\n${driver.city}, ${driver.state} ${driver.zip}';
    String truck = driver.truck != null ? '${driver.truck.number}' : null;
    String owner = driver.owner != null
        ? '${driver.owner.firstName} ${driver.owner.lastName}'
        : null;
    String name = '${driver.firstName} ${driver.lastName}';
    IconData appIcon = driver.mobileApp
        ? (driver.deviceType == 'android'
            ? Icons.android
            : Icons.mobile_screen_share)
        : Icons.block;
    return ItemDrivers(
        type: type,
        mobile: mobile,
        email: email,
        app: appIcon,
        home: home,
        truck: truck,
        owner: owner,
        name: name);
  }

  void getListDrivers() async {
    driversBloc.add(new GetDrivers(
        page: page, perPage: perPage, accessToken: appBloc.state.accessToken));
  }
}
