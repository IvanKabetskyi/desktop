// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Driver _$DriverFromJson(Map<String, dynamic> json) {
  return Driver(
    id: json['id'] as int,
    firstName: json['firstName'] as String,
    dateOfBirthday: json['dateOfBirthday'] as String,
    sex: json['sex'] as String,
    language: json['language'] as String,
    lastName: json['lastName'] as String,
    passportExpireDate: json['passportExpireDate'],
    greencardExpireDate: json['greencardExpireDate'],
    hiredDate: json['hiredDate'] as String,
    canada: json['canada'] as bool,
    mexico: json['mexico'] as bool,
    licenceType: json['licenceType'] as String,
    licenceNumber: json['licenceNumber'] as String,
    licenceState: json['licenceState'] as String,
    citizenship: json['citizenship'] as String,
    expiration: json['expiration'],
    hazmat: json['hazmat'] as bool,
    hazmatSince: json['hazmatSince'],
    hazmatExp: json['hazmatExp'],
    tsa: json['tsa'] as bool,
    tsaExp: json['tsaExp'],
    twic: json['twic'] as bool,
    twicSince: json['twicSince'],
    twicExp: json['twicExp'],
    tankerEndorsement: json['tankerEndorsement'] as bool,
    tsaSince: json['tsaSince'],
    addressLine: json['addressLine'] as String,
    additionalAddressLine: json['additionalAddressLine'],
    city: json['city'] as String,
    state: json['state'] as String,
    zip: json['zip'] as String,
    note: json['note'],
    mobilePhone: json['mobilePhone'] as String,
    additionalMobilePhone: json['additionalMobilePhone'],
    homePhone: json['homePhone'],
    email: json['email'] as String,
    country: json['country'] as String,
    relationship: json['relationship'],
    ecPhone: json['ecPhone'],
    ecPhone2: json['ecPhone2'],
    status: json['status'] as String,
    mobileApp: json['mobileApp'] as bool,
    isMain: json['isMain'] as bool,
    isOwner: json['isOwner'] as bool,
    isDeleted: json['isDeleted'] as bool,
    deviceType: json['deviceType'] as String,
    deviceInfo: json['deviceInfo'] as String,
    deviceId: json['deviceId'] as String,
    deviceAppVersion: json['deviceAppVersion'] as String,
    homeLat: json['homeLat'] as String,
    homeLng: json['homeLng'] as String,
    notWorkingWith: json['notWorkingWith'],
    hiredBy: json['hiredBy'] == null
        ? null
        : HiredBy.fromJson(json['hiredBy'] as Map<String, dynamic>),
    owner: json['owner'] == null
        ? null
        : Owner.fromJson(json['owner'] as Map<String, dynamic>),
    truckId: json['truckId'] as int,
    truck: json['truck'] == null
        ? null
        : Truck.fromJson(json['truck'] as Map<String, dynamic>),
    ecName: json['ecName'],
    driverNote: json['driverNote'],
    driverClass: json['driverClass'],
  );
}

Map<String, dynamic> _$DriverToJson(Driver instance) => <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'dateOfBirthday': instance.dateOfBirthday,
      'sex': instance.sex,
      'language': instance.language,
      'lastName': instance.lastName,
      'passportExpireDate': instance.passportExpireDate,
      'greencardExpireDate': instance.greencardExpireDate,
      'hiredDate': instance.hiredDate,
      'canada': instance.canada,
      'mexico': instance.mexico,
      'licenceType': instance.licenceType,
      'licenceNumber': instance.licenceNumber,
      'licenceState': instance.licenceState,
      'citizenship': instance.citizenship,
      'expiration': instance.expiration,
      'hazmat': instance.hazmat,
      'hazmatSince': instance.hazmatSince,
      'hazmatExp': instance.hazmatExp,
      'tsa': instance.tsa,
      'tsaExp': instance.tsaExp,
      'twic': instance.twic,
      'twicSince': instance.twicSince,
      'twicExp': instance.twicExp,
      'tankerEndorsement': instance.tankerEndorsement,
      'tsaSince': instance.tsaSince,
      'addressLine': instance.addressLine,
      'additionalAddressLine': instance.additionalAddressLine,
      'city': instance.city,
      'state': instance.state,
      'zip': instance.zip,
      'note': instance.note,
      'mobilePhone': instance.mobilePhone,
      'additionalMobilePhone': instance.additionalMobilePhone,
      'homePhone': instance.homePhone,
      'email': instance.email,
      'country': instance.country,
      'relationship': instance.relationship,
      'ecPhone': instance.ecPhone,
      'ecPhone2': instance.ecPhone2,
      'status': instance.status,
      'mobileApp': instance.mobileApp,
      'isMain': instance.isMain,
      'isOwner': instance.isOwner,
      'isDeleted': instance.isDeleted,
      'deviceType': instance.deviceType,
      'deviceInfo': instance.deviceInfo,
      'deviceId': instance.deviceId,
      'deviceAppVersion': instance.deviceAppVersion,
      'homeLat': instance.homeLat,
      'homeLng': instance.homeLng,
      'notWorkingWith': instance.notWorkingWith,
      'hiredBy': instance.hiredBy,
      'owner': instance.owner,
      'truckId': instance.truckId,
      'truck': instance.truck,
      'ecName': instance.ecName,
      'driverNote': instance.driverNote,
      'driverClass': instance.driverClass,
    };
