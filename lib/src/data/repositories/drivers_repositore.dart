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
      print('API getDrivers finished ${responseData is String}');

      List<dynamic> jsonList = json.decode(responseData);

      List<Driver> driverList = new List<Driver>();
      try {
        // print('list create $stringList');

        jsonList.forEach((element) {
          Map<String, dynamic> event = element;

          event.forEach((key, value) {
            //get type of value
            // print('${external Type get value}');
          })
          driverList.add(Driver.fromJson(event));
        });
      } catch (err) {
        print('error: ${err.toString}');
      }
      DriversState driversState =
          new DriversState.fromJson({'drivers': driverList});
      print('DriversState create');
      return driversState;
    } catch (e) {
      throw e.toString();
    }
  }
}
