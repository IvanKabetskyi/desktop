import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

@immutable
abstract class AppEvent extends Equatable {}

class FetchLogin extends AppEvent {
  final String email;
  final String password;
  final BuildContext context;

  FetchLogin({@required this.email, this.password, this.context});

  @override
  List<Object> get props => null;
}
