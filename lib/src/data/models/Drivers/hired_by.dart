import 'package:example_flutter/src/lib/conver_to_camel_case.dart';
import 'package:json_annotation/json_annotation.dart';

part 'hired_by.g.dart';

@JsonSerializable()
class HiredBy {
  int id;
  String firstName;
  String lastName;
  String fakeFirstName;
  String fakeLastName;
  bool useFake;

  HiredBy(
      {this.id,
      this.firstName,
      this.lastName,
      this.fakeFirstName,
      this.fakeLastName,
      this.useFake});

  factory HiredBy.fromJson(Map<String, dynamic> json) =>
      _$HiredByFromJson(converKeyToCamelCase(json));

  Map<String, dynamic> toJson() => _$HiredByToJson(this);
}
