import 'dart:async';
import 'dart:convert';

import 'package:example_flutter/src/Api/index.dart';
import 'package:example_flutter/src/data/models/User/app_state.dart';
import 'package:example_flutter/src/data/models/User/user_me.dart';
import 'package:flutter/material.dart';

dynamic http = new Api();

abstract class AppRepository {
  Future<AppState> login(String email, String password, BuildContext context);
}

class AppRepositoryImpl implements AppRepository {
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

  @override
  Future<AppState> login(
      String email, String password, BuildContext context) async {
    try {
      Map<String, dynamic> tokens = await getToken(email, password);

      UserMe userMe = await getMe(tokens['access_token']);

      return new AppState(
          userMe: userMe,
          accessToken: tokens['access_token'],
          refreshToken: tokens['refresh_token']);
    } catch (e) {
      throw e.toString();
    }
  }
}
