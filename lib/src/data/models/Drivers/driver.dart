import 'package:example_flutter/src/data/models/Drivers/hired_by.dart';
import 'package:example_flutter/src/data/models/Drivers/truck.dart';
import 'package:example_flutter/src/lib/conver_to_camel_case.dart';
import 'package:json_annotation/json_annotation.dart';

import 'owner.dart';

part 'driver.g.dart';

@JsonSerializable()
class Driver {
  int id;
  String firstName;
  String dateOfBirthday;
  String sex;
  String language;
  String lastName;
  dynamic passportExpireDate;
  dynamic greencardExpireDate;
  String hiredDate;
  bool canada;
  bool mexico;
  String licenceType;
  String licenceNumber;
  String licenceState;
  String citizenship;
  dynamic expiration;
  bool hazmat;
  dynamic hazmatSince;
  dynamic hazmatExp;
  bool tsa;
  dynamic tsaExp;
  bool twic;
  dynamic twicSince;
  dynamic twicExp;
  bool tankerEndorsement;
  dynamic tsaSince;
  String addressLine;
  dynamic additionalAddressLine;
  String city;
  String state;
  String zip;
  dynamic note;
  String mobilePhone;
  dynamic additionalMobilePhone;
  dynamic homePhone;
  String email;
  String country;
  dynamic relationship;
  dynamic ecPhone;
  dynamic ecPhone2;
  String status;
  bool mobileApp;
  bool isMain;
  bool isOwner;
  bool isDeleted;
  String deviceType;
  String deviceInfo;
  String deviceId;
  String deviceAppVersion;
  String homeLat;
  String homeLng;
  dynamic notWorkingWith;
  HiredBy hiredBy;
  Owner owner;
  int truckId;
  Truck truck;
  dynamic ecName;
  dynamic driverNote;
  dynamic driverClass;

  Driver(
      {this.id,
      this.firstName,
      this.dateOfBirthday,
      this.sex,
      this.language,
      this.lastName,
      this.passportExpireDate,
      this.greencardExpireDate,
      this.hiredDate,
      this.canada,
      this.mexico,
      this.licenceType,
      this.licenceNumber,
      this.licenceState,
      this.citizenship,
      this.expiration,
      this.hazmat,
      this.hazmatSince,
      this.hazmatExp,
      this.tsa,
      this.tsaExp,
      this.twic,
      this.twicSince,
      this.twicExp,
      this.tankerEndorsement,
      this.tsaSince,
      this.addressLine,
      this.additionalAddressLine,
      this.city,
      this.state,
      this.zip,
      this.note,
      this.mobilePhone,
      this.additionalMobilePhone,
      this.homePhone,
      this.email,
      this.country,
      this.relationship,
      this.ecPhone,
      this.ecPhone2,
      this.status,
      this.mobileApp,
      this.isMain,
      this.isOwner,
      this.isDeleted,
      this.deviceType,
      this.deviceInfo,
      this.deviceId,
      this.deviceAppVersion,
      this.homeLat,
      this.homeLng,
      this.notWorkingWith,
      this.hiredBy,
      this.owner,
      this.truckId,
      this.truck,
      this.ecName,
      this.driverNote,
      this.driverClass});

  factory Driver.fromJson(Map<String, dynamic> json) =>
      _$DriverFromJson(converKeyToCamelCase(json));

  Map<String, dynamic> toJson() => _$DriverToJson(this);
}
