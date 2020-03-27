import 'dart:convert';

import 'package:example_flutter/src/Api/index.dart';
import 'package:example_flutter/src/redux/models/app_state.dart';
import 'package:example_flutter/src/screen/Drivers/models/driver.dart';
import 'package:example_flutter/src/screen/Drivers/models/drivers_state.dart';
import 'package:redux_thunk/redux_thunk.dart';

import 'package:example_flutter/src/redux/index.dart';

import 'package:redux/redux.dart';

dynamic http = new Api();

ThunkAction<AppState> setDrivers(int page, int perPage) {
  return (Store<AppState> store) async {
    String accessToken = store.state.userState.accessToken;
    try {
      dynamic responseData = await http.getDrivers(1, 50, accessToken);

      List<dynamic> jsonList = json.decode(responseData);
      List<Driver> driverList = jsonList.map((element) {
        return Driver.fromJson(element);
      }).toList();
      DriversState driversState =
          new DriversState.fromJson({'drivers': driverList});

      store.dispatch(new Actions(type: 'SET_DRIVERS', payload: {
        'drivers': driversState,
      }));
    } catch (e) {
      throw e.toString();
    }
  };
}
