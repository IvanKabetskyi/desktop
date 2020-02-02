import 'package:example_flutter/src/data/models/User/user_me.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  int id;
  String username;
  String usernameCanonical;
  String email;
  String emailCanonical;
  bool enabled;
  String salt;
  String password;
  dynamic plainPassword;
  dynamic lastLogin;
  dynamic confirmationToken;
  dynamic passwordRequestedAt;
  List<dynamic> groups;
  List<String> roles;
  dynamic dispatcher;
  dynamic driver;

  User(
      {this.id,
      this.username,
      this.usernameCanonical,
      this.email,
      this.emailCanonical,
      this.enabled,
      this.salt,
      this.password,
      this.plainPassword,
      this.lastLogin,
      this.confirmationToken,
      this.passwordRequestedAt,
      this.groups,
      this.roles,
      this.dispatcher,
      this.driver});

  factory User.fromJson(Map<String, dynamic> json) =>
      _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}