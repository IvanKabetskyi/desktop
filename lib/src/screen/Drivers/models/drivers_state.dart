import 'package:example_flutter/src/lib/conver_to_camel_case.dart';
import 'package:example_flutter/src/screen/Drivers/models/driver.dart';
import 'package:json_annotation/json_annotation.dart';

part 'drivers_state.g.dart';

@JsonSerializable()
class DriversState {
  List<Driver> drivers;

  DriversState({this.drivers});

  factory DriversState.fromJson(Map<String, dynamic> json) =>
      _$DriversStateFromJson(converKeyToCamelCase(json));

  Map<String, dynamic> toJson() => _$DriversStateToJson(this);
}
