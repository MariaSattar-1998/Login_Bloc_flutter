import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';

abstract class Login_States extends Equatable {
  Login_States([List props = const []]) : super(props);
}

class SplashState extends Login_States {
  @override
  String toString() => 'SplashState';
}

class LoadingState extends Login_States {
  @override
  String toString() => 'LoadingState';
}

class LogInState extends Login_States {
  @override
  String toString() => 'LogInState';
}

class WelcomeState extends Login_States {
  String uname1;
  WelcomeState(this.uname1);
  @override
  String toString() => 'WelcomeState';
}

class LogoutState extends Login_States {
  @override
  String toString() => 'LogoutState';
}
