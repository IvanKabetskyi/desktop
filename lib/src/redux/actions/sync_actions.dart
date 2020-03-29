import 'package:example_flutter/src/redux/index.dart';
import 'package:example_flutter/src/redux/models/app_state.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:redux/redux.dart';


ThunkAction<AppState> startSync() {
  return (Store<AppState> store) async {
    store.dispatch(new Actions(type: 'START_SYNC'));
  };
}

ThunkAction<AppState> stopSync() {
  return (Store<AppState> store) async {
    store.dispatch(new Actions(type: 'STOP_SYNC'));
  };
}