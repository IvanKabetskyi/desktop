import 'dart:async';

import 'package:example_flutter/src/bloc/drivers/drivers_state.dart';
import 'package:example_flutter/src/bloc/drivers/drivers_state_event.dart';
import 'package:example_flutter/src/data/models/Drivers/drivers_state.dart';
import 'package:example_flutter/src/data/repositories/drivers_repositore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DriversBloc extends Bloc<DriversEvent, DriversState> {
  final DriversRepository repository;

  DriversBloc({@required this.repository});

  @override
  DriversState get initialState {
    return DriversInitialState();
  }

  @override
  Stream<DriversState> mapEventToState(DriversEvent event) async* {
    if (event is GetDrivers) {
      yield DriversLoadingState();
      try {
        DriversState driversState = await repository.getDrivers(
            event.page, event.perPage, event.accessToken);

        yield DriversLoadedState(driversState: driversState);
        yield driversState;
      } catch (e) {
        yield DriversErrorState(message: e.toString());
      }
    }
  }
}
