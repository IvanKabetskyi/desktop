import 'dart:async';
import 'dart:convert';

import 'package:example_flutter/src/Api/index.dart';
import 'package:example_flutter/src/data/models/Drivers/driver.dart';
import 'package:example_flutter/src/data/models/Drivers/drivers_state.dart';

dynamic http = new Api();

abstract class DriversRepository {
  Future<DriversState> getDrivers(int page, int perPage, String accessToken);
}

class DriversRepositoryImpl implements DriversRepository {
  @override
  Future<DriversState> getDrivers(
      int page, int perPage, String accessToken) async {
    try {
      dynamic responseData = await http.getDrivers(page, perPage, accessToken);

      List<dynamic> jsonList = json.decode(responseData);
      List<Driver> driverList = jsonList.map((element) {
        return Driver.fromJson(element);
      }).toList();
      DriversState driversState =
          new DriversState.fromJson({'drivers': driverList});
      return driversState;
    } catch (e) {
      throw e.toString();
    }
  }
}
