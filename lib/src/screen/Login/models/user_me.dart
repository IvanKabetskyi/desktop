import 'package:example_flutter/src/lib/conver_to_camel_case.dart';
import 'package:example_flutter/src/screen/Login/models/settings.dart';
import 'package:example_flutter/src/screen/Login/models/user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_me.g.dart';

@JsonSerializable()
class UserMe {
  int id;
  String firstName;
  String lastName;
  String fakeFirstName;
  String fakeLastName;
  bool useFake;
  String sex;
  String dateOfBirthday;
  String hireDate;
  bool status;
  dynamic directLine;
  dynamic extension;
  dynamic cellPhone;
  dynamic mainPhone;
  dynamic personalCell;
  dynamic address;
  String email;
  String ecName;
  String ecPhone;
  dynamic ecRelationship;
  bool sendUpdates;
  User user;
  bool isDeleted;
  bool isHidden;
  Settings settings;

  UserMe(
      {this.id,
      this.firstName,
      this.lastName,
      this.fakeFirstName,
      this.fakeLastName,
      this.useFake,
      this.sex,
      this.dateOfBirthday,
      this.hireDate,
      this.status,
      this.directLine,
      this.extension,
      this.cellPhone,
      this.mainPhone,
      this.personalCell,
      this.address,
      this.email,
      this.ecName,
      this.ecPhone,
      this.ecRelationship,
      this.sendUpdates,
      this.user,
      this.isDeleted,
      this.isHidden,
      this.settings});

  factory UserMe.fromJson(Map<String, dynamic> json) =>
      _$UserMeFromJson(converKeyToCamelCase(json));

  Map<String, dynamic> toJson() => _$UserMeToJson(this);
}
