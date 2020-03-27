import 'package:example_flutter/src/screen/Drivers/models/drivers_state.dart';
import 'package:example_flutter/src/screen/Login/models/user_state.dart';
import 'package:json_annotation/json_annotation.dart';

part 'app_state.g.dart';

@JsonSerializable()
class AppState {
  UserState userState;
  DriversState driversSate;

  AppState({this.userState, this.driversSate});

  factory AppState.fromJson(Map<String, dynamic> json) =>
      _$AppStateFromJson(json);

  Map<String, dynamic> toJson() => _$AppStateToJson(this);
}
