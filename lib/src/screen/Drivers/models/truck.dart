import 'package:example_flutter/src/lib/conver_to_camel_case.dart';
import 'package:json_annotation/json_annotation.dart';

import 'hired_by.dart';

part 'truck.g.dart';

@JsonSerializable()
class Truck {
  int id;
  String number;
  String status;
  dynamic statusDate;
  dynamic lastStopTimeStart;
  dynamic lastStopTimeEnd;
  dynamic lastStopTimezone;
  String statusLatitude;
  String statusLongitude;
  String statusCityLine;
  HiredBy statusDispatcher;
  String hiredDate;
  String dispatcherNote;
  HiredBy dispatcherNoteCreator;
  String dispatcherNoteUpdatedAt;
  String vincode;
  dynamic licensePlate;
  String licenseState;
  String model;
  String year;
  String type;
  dynamic color;
  String updatedAt;
  int grossWeight;
  String grossWeightUnits;
  String doorType;
  int hiredBy;
  double doorDimsHeight;
  double insideDimsWidth;
  double insideDimsHeight;
  double insideDimsLength;
  dynamic insuranceExpiration;
  dynamic registrationExpiration;
  String make;
  int payload;
  String payloadUnits;
  double doorDimsWidth;
  double validDimsWidth;
  double validDimsHeight;
  double validDimsLength;
  String equipment;
  bool companySigns;
  String additionalEquipment;
  bool responsible;
  int plannedToCount;
  List<dynamic> drivers;
  String lastLatitude;
  String lastLongitude;
  String lastCityLine;
  String locationSameFrom;

  Truck(
      {this.id,
      this.number,
      this.status,
      this.statusDate,
      this.lastStopTimeStart,
      this.lastStopTimeEnd,
      this.lastStopTimezone,
      this.statusLatitude,
      this.statusLongitude,
      this.statusCityLine,
      this.statusDispatcher,
      this.hiredDate,
      this.dispatcherNote,
      this.dispatcherNoteCreator,
      this.dispatcherNoteUpdatedAt,
      this.vincode,
      this.licensePlate,
      this.licenseState,
      this.model,
      this.year,
      this.type,
      this.color,
      this.updatedAt,
      this.grossWeight,
      this.grossWeightUnits,
      this.doorType,
      this.hiredBy,
      this.doorDimsHeight,
      this.insideDimsWidth,
      this.insideDimsHeight,
      this.insideDimsLength,
      this.insuranceExpiration,
      this.registrationExpiration,
      this.make,
      this.payload,
      this.payloadUnits,
      this.doorDimsWidth,
      this.validDimsWidth,
      this.validDimsHeight,
      this.validDimsLength,
      this.equipment,
      this.companySigns,
      this.additionalEquipment,
      this.responsible,
      this.plannedToCount,
      this.drivers,
      this.lastLatitude,
      this.lastLongitude,
      this.lastCityLine,
      this.locationSameFrom});

  factory Truck.fromJson(Map<String, dynamic> json) =>
      _$TruckFromJson(converKeyToCamelCase(json));

  Map<String, dynamic> toJson() => _$TruckToJson(this);
}
