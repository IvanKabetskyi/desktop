import 'package:example_flutter/src/data/models/User/user_me.dart';
import 'package:json_annotation/json_annotation.dart';

part 'app_state.g.dart';

@JsonSerializable()
class AppState {
  String accessToken;
  String refreshToken;
  UserMe userMe;

  AppState({this.accessToken, this.refreshToken, this.userMe});

  factory AppState.fromJson(Map<String, dynamic> json) =>
      _$AppStateFromJson(json);

  Map<String, dynamic> toJson() => _$AppStateToJson(this);
}