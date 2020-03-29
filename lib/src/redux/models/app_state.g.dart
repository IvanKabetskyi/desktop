// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppState _$AppStateFromJson(Map<String, dynamic> json) {
  return AppState(
    userState: json['userState'] == null
        ? null
        : UserState.fromJson(json['userState'] as Map<String, dynamic>),
    driversSate: json['driversSate'] == null
        ? null
        : DriversState.fromJson(json['driversSate'] as Map<String, dynamic>),
    syncLoad: json['syncLoad'] as bool,
  );
}

Map<String, dynamic> _$AppStateToJson(AppState instance) => <String, dynamic>{
      'userState': instance.userState,
      'driversSate': instance.driversSate,
      'syncLoad': instance.syncLoad,
    };
