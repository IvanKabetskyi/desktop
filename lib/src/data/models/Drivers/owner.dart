import 'package:example_flutter/src/lib/conver_to_camel_case.dart';
import 'package:json_annotation/json_annotation.dart';

part 'owner.g.dart';

@JsonSerializable()
class Owner {
  int id;
  String firstName;
  String lastName;
  String language;
  String homeLat;
  String homeLng;

  Owner(
      {this.id,
      this.firstName,
      this.lastName,
      this.language,
      this.homeLat,
      this.homeLng});

  factory Owner.fromJson(Map<String, dynamic> json) =>
      _$OwnerFromJson(converKeyToCamelCase(json));

  Map<String, dynamic> toJson() => _$OwnerToJson(this);
}
