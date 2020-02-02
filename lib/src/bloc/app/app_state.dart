import 'package:flutter/material.dart';
import 'package:example_flutter/src/data/models/User/app_state.dart';

class AppInitialState extends AppState {}

class AppLoadingState extends AppState {}

class AppLoadedState extends AppState {
  final AppState appState;

  AppLoadedState({this.appState}) : super();
}

class AppErrorState extends AppState {
  final String message;

  AppErrorState({@required this.message});
}
