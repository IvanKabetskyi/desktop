// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppState _$AppStateFromJson(Map<String, dynamic> json) {
  return AppState(
    accessToken: json['accessToken'] as String,
    refreshToken: json['refreshToken'] as String,
    userMe: json['userMe'] == null
        ? null
        : UserMe.fromJson(json['userMe'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AppStateToJson(AppState instance) => <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'userMe': instance.userMe,
    };
