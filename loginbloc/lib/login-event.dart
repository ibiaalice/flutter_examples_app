import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();
}

class LoginButtonPressed extends LoginEvent {
  final String username;
  final String password;

  LoginButtonPressed({@required this.username, @required this.password});

  @override
  List<Object> get props => [username, password];

  String toString() =>
      'LoginButtonPressed { username: $username, password: $password}';
}
