import 'package:example_flutter/src/lib/conver_to_camel_case.dart';
import 'package:json_annotation/json_annotation.dart';

part 'settings.g.dart';

@JsonSerializable()
class Settings {
  int id;
  String dateFormat;
  String timezone;
  dynamic email;
  dynamic dispatcher;

  Settings(
      {this.id, this.dateFormat, this.timezone, this.email, this.dispatcher});

  factory Settings.fromJson(Map<String, dynamic> json) =>
      _$SettingsFromJson(converKeyToCamelCase(json));

  Map<String, dynamic> toJson() => _$SettingsToJson(this);
}
