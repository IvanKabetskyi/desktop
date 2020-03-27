import 'package:example_flutter/src/lib/conver_to_camel_case.dart';
import 'package:example_flutter/src/screen/Login/models/user_me.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_state.g.dart';

@JsonSerializable()
class UserState {
  String accessToken;
  String refreshToken;
  UserMe userMe;

  UserState({this.accessToken, this.refreshToken, this.userMe});

  factory UserState.fromJson(Map<String, dynamic> json) =>
      _$UserStateFromJson(converKeyToCamelCase(json));

  Map<String, dynamic> toJson() => _$UserStateToJson(this);
}
