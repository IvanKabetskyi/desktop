import 'package:example_flutter/src/redux/models/app_state.dart';

AppState driversReducer(AppState prevState, action) {
  AppState state = prevState;
  switch (action.type) {
    case 'SET_DRIVERS':
      state.driversSate = action.payload['drivers'];
      return state;

    default:
      return prevState;
  }
}
