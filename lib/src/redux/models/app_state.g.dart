// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppState _$AppStateFromJson(Map<String, dynamic> json) {
  return AppState(
    userState: json['userState'],
    driversSate: json['driversSate'] == null
        ? null
        : DriversState.fromJson(json['driversSate'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AppStateToJson(AppState instance) => <String, dynamic>{
      'userState': instance.userState,
      'driversSate': instance.driversSate,
    };
