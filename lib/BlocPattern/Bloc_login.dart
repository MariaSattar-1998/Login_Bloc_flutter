import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:login_bloc2/BlocPattern/Events_login.dart';
import 'package:login_bloc2/BlocPattern/States_login.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

String alreadyvisit;
String ename;
String epassword;
SharedPreferences prefrnc;

class Bloc_login extends Bloc<Login_Event, Login_States> {
  Bloc_login() : super(SplashState());

  @override
  Stream<Login_States> mapEventToState(Login_Event event) async* {
    if (event is SplashEvent) {
      yield SplashState();
    } else if (event is AppStartedEvent) {
      String getresult = await getVisitingflag();
      if (getresult != null) {
        yield WelcomeState(getresult);
      } else if (getresult == null) {
        yield LogInState();
      } else
        (Text("EROOR"));
    } else if (event is LogInEvent) {
      ename = event.name;
      epassword = event.password;
      setVisitingflag(ename, epassword);
      yield LoadingState();
      String getresult = await getVisitingflag();
      yield WelcomeState(getresult);
    } else if (event is LogoutEvent) {
      yield LoadingState();
      prefrnc = await SharedPreferences.getInstance();
      await prefrnc.remove('username');
      yield LogInState();
    } else
      (Text("EROOR"));
  }
}

Future<String> getVisitingflag() async {
  prefrnc = await SharedPreferences.getInstance();
  alreadyvisit = prefrnc.getString('username');
  return alreadyvisit;
}

setVisitingflag(String name1, String password1) async {
  prefrnc = await SharedPreferences.getInstance();
  prefrnc.setString('username', name1);
}
