// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Settings _$SettingsFromJson(Map<String, dynamic> json) {
  return Settings(
    id: json['id'] as int,
    dateFormat: json['dateFormat'] as String,
    timezone: json['timezone'] as String,
    email: json['email'],
    dispatcher: json['dispatcher'],
  );
}

Map<String, dynamic> _$SettingsToJson(Settings instance) => <String, dynamic>{
      'id': instance.id,
      'dateFormat': instance.dateFormat,
      'timezone': instance.timezone,
      'email': instance.email,
      'dispatcher': instance.dispatcher,
    };
