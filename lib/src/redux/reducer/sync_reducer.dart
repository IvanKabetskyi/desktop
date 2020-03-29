import 'package:example_flutter/src/redux/models/app_state.dart';

AppState syncReducer(AppState prevState, action) {
  AppState state = prevState;
  switch (action.type) {
    case 'START_SYNC':
      state.syncLoad = true;
      return state;

    case 'STOP_SYNC':
      state.syncLoad = false;
      return state;

    default:
      return prevState;
  }
}
