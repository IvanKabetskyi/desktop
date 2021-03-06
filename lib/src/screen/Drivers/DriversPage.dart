import 'package:example_flutter/src/redux/models/app_state.dart';
import 'package:example_flutter/src/screen/Drivers/actions/driver_acions.dart';
import 'package:example_flutter/src/screen/Drivers/components/drivers_header.dart';
import 'package:example_flutter/src/screen/Drivers/components/drivers_list_item.dart';
import 'package:example_flutter/src/screen/Drivers/models/driver.dart';
import 'package:example_flutter/src/screen/Drivers/models/drivers_state.dart';
import 'package:flutter/material.dart';

import 'package:flutter_redux/flutter_redux.dart';

class DriversPage extends StatefulWidget {
  _DriversState createState() => _DriversState();
}

class _DriversState extends State<DriversPage> {
  int page;
  int perPage;
  @override
  void initState() {
    super.initState();
    page = 1;
    perPage = 50;

  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

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
            StoreConnector<AppState, DriversState>(
              converter: (store) => store.state.driversSate,
              builder: (context, state) {
                if (state.drivers != null) {
                  return Column(
                    children: state.drivers
                        .map((driver) => createDriverItem(driver))
                        .toList(),
                  );
                }

                return SizedBox();
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
    StoreProvider.of<AppState>(context).dispatch(setDrivers(page, perPage));
  }
}
