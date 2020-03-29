// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserState _$UserStateFromJson(Map<String, dynamic> json) {
  return UserState(
    accessToken: json['accessToken'] as String,
    refreshToken: json['refreshToken'] as String,
    userMe: json['userMe'] == null
        ? null
        : UserMe.fromJson(json['userMe'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$UserStateToJson(UserState instance) => <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'userMe': instance.userMe,
    };
