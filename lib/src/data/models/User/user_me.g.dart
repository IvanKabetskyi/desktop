// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_me.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserMe _$UserMeFromJson(Map<String, dynamic> json) {
  return UserMe(
    id: json['id'] as int,
    firstName: json['firstName'] as String,
    lastName: json['lastName'] as String,
    fakeFirstName: json['fakeFirstName'] as String,
    fakeLastName: json['fakeLastName'] as String,
    useFake: json['useFake'] as bool,
    sex: json['sex'] as String,
    dateOfBirthday: json['dateOfBirthday'] as String,
    hireDate: json['hireDate'] as String,
    status: json['status'] as bool,
    directLine: json['directLine'],
    extension: json['extension'],
    cellPhone: json['cellPhone'],
    mainPhone: json['mainPhone'],
    personalCell: json['personalCell'],
    address: json['address'],
    email: json['email'] as String,
    ecName: json['ecName'] as String,
    ecPhone: json['ecPhone'] as String,
    ecRelationship: json['ecRelationship'],
    sendUpdates: json['sendUpdates'] as bool,
    user: json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
    isDeleted: json['isDeleted'] as bool,
    isHidden: json['isHidden'] as bool,
    settings: json['settings'] == null
        ? null
        : Settings.fromJson(json['settings'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$UserMeToJson(UserMe instance) => <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'fakeFirstName': instance.fakeFirstName,
      'fakeLastName': instance.fakeLastName,
      'useFake': instance.useFake,
      'sex': instance.sex,
      'dateOfBirthday': instance.dateOfBirthday,
      'hireDate': instance.hireDate,
      'status': instance.status,
      'directLine': instance.directLine,
      'extension': instance.extension,
      'cellPhone': instance.cellPhone,
      'mainPhone': instance.mainPhone,
      'personalCell': instance.personalCell,
      'address': instance.address,
      'email': instance.email,
      'ecName': instance.ecName,
      'ecPhone': instance.ecPhone,
      'ecRelationship': instance.ecRelationship,
      'sendUpdates': instance.sendUpdates,
      'user': instance.user,
      'isDeleted': instance.isDeleted,
      'isHidden': instance.isHidden,
      'settings': instance.settings,
    };
