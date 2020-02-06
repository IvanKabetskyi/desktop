// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hired_by.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HiredBy _$HiredByFromJson(Map<String, dynamic> json) {
  return HiredBy(
    id: json['id'] as int,
    firstName: json['firstName'] as String,
    lastName: json['lastName'] as String,
    fakeFirstName: json['fakeFirstName'] as String,
    fakeLastName: json['fakeLastName'] as String,
    useFake: json['useFake'] as bool,
  );
}

Map<String, dynamic> _$HiredByToJson(HiredBy instance) => <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'fakeFirstName': instance.fakeFirstName,
      'fakeLastName': instance.fakeLastName,
      'useFake': instance.useFake,
    };
