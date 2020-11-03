import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';

abstract class Login_Event extends Equatable {
  Login_Event([List props = const []]) : super(props);
}

class SplashEvent extends Login_Event {
  @override
  String toString() => 'SplashEvent';
}

class AppStartedEvent extends Login_Event {
  @override
  String toString() => 'AppStartedEvent';
}

class LogInEvent extends Login_Event {
  String name;
  String password;
  LogInEvent(this.name, this.password);
  @override
  String toString() => 'LogInEvent';
}

class WelcomeEvent extends Login_Event {
  @override
  String toString() => 'WelcomeEvent';
}

class LogoutEvent extends Login_Event {
  @override
  String toString() => 'LogoutEvent';
}
