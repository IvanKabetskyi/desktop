import 'dart:async';
import 'dart:convert';

import 'package:example_flutter/src/bloc/app/app_state.dart';
import 'package:example_flutter/src/bloc/app/app_state_event.dart';
import 'package:example_flutter/src/data/repositories/user_repositore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:example_flutter/src/data/models/User/app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  final AppRepository repository;

  AppBloc({@required this.repository});

  @override
  AppState get initialState {
    return AppInitialState();
  }

  @override
  Stream<AppState> mapEventToState(AppEvent event) async* {
    if (event is FetchLogin) {
      yield AppLoadingState();
      try {
        AppState appState =
            await repository.login(event.email, event.password, event.context);

        yield AppLoadedState(appState: appState);
        yield appState;
        print(json.encode(appState));
        await Navigator.of(event.context).pushNamed('/');
      } catch (e) {
        yield AppErrorState(message: e.toString());
      }
    }
  }
}
