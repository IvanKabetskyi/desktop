// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drivers_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DriversState _$DriversStateFromJson(Map<String, dynamic> json) {
  return DriversState(
    drivers: (json['drivers'] as List)
        ?.map((e) =>
            e == null ? null : Driver.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$DriversStateToJson(DriversState instance) =>
    <String, dynamic>{
      'drivers': instance.drivers,
    };
