import 'package:example_flutter/src/redux/models/app_state.dart';

AppState userReducer(AppState prevState, action) {
  AppState state = prevState;
  switch (action.type) {
    case 'SET_USER':
      state.userState = action.payload['user'];
      return state;

    default:
      return prevState;
  }
}
