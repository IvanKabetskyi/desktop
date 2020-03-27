import 'dart:async';
import 'dart:convert';

import 'package:example_flutter/src/Api/index.dart';
import 'package:example_flutter/src/redux/index.dart';
import 'package:example_flutter/src/redux/models/app_state.dart';
import 'package:example_flutter/src/screen/Login/models/user_me.dart';
import 'package:example_flutter/src/screen/Login/models/user_state.dart';
import 'package:redux_thunk/redux_thunk.dart';

import 'package:redux/redux.dart';

dynamic http = new Api();

Future<UserMe> getMe(String token) async {
  dynamic response = await http.getMe(token);
  if (response.statusCode >= 200 && response.statusCode <= 300) {
    final data = new UserMe.fromJson(json.decode(response.body));

    return data;
  }

  throw Exception();
}

Future<Map<String, dynamic>> getToken(email, password) async {
  final dynamic response = await http.getToken(email, password);

  if (response.statusCode == 200) {
    Map<String, dynamic> data = json.decode(response.body);
    return data;
  }

  throw Exception();
}

ThunkAction<AppState> login(String email, String password) {
  return (Store<AppState> store) async {
    Map<String, dynamic> tokens = await getToken(email, password);
    UserMe userMe = await getMe(tokens['access_token']);
    UserState userState = new UserState(
        userMe: userMe,
        accessToken: tokens['access_token'],
        refreshToken: tokens['refresh_token']);
    store.dispatch(new Actions(type: 'SET_USER', payload: {
      'user': userState,
    }));
  };
}
