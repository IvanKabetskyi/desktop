import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

@immutable
abstract class DriversEvent extends Equatable {}

class GetDrivers extends DriversEvent {
  final int page;
  final int perPage;
  final String accessToken;

  GetDrivers({@required this.page, this.perPage, this.accessToken});

  @override
  List<Object> get props => null;
}
