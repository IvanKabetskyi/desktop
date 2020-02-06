import 'package:example_flutter/src/data/models/Drivers/drivers_state.dart';
import 'package:flutter/material.dart';

class DriversInitialState extends DriversState {}

class DriversLoadingState extends DriversState {}

class DriversLoadedState extends DriversState {
  final DriversState driversState;

  DriversLoadedState({this.driversState}) : super();
}

class DriversErrorState extends DriversState {
  final String message;

  DriversErrorState({@required this.message});
}
