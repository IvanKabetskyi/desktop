import 'package:example_flutter/src/screen/Drivers/reducers/drivers_reducer.dart';
import 'package:example_flutter/src/screen/Login/models/user_state.dart';
import 'package:example_flutter/src/redux/models/app_state.dart';
import 'package:example_flutter/src/screen/Drivers/models/drivers_state.dart';
import 'package:example_flutter/src/screen/Login/reducers/user_reducer.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:redux/redux.dart';

Store<AppState> getStore() {
  final combined = combineReducers<AppState>([
    userReducer,
    driversReducer,
  ]);
  final AppState _initialState =
      AppState(userState: UserState(), driversSate: DriversState());
  final Store<AppState> _store = Store<AppState>(combined,
      initialState: _initialState, middleware: [thunkMiddleware]);

  return _store;
}

class Actions {
  String type;
  Map<String, dynamic> payload;

  Actions({this.payload, this.type});
}
