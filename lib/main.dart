import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_bloc2/Screens/LoadingScrn.dart';
import 'package:login_bloc2/Screens/LoginScrn.dart';
import 'package:login_bloc2/Screens/WelcomeScrn.dart';
import 'BlocPattern/Events_login.dart';
import 'Screens/Splash.dart';
import 'BlocPattern/Bloc_login.dart';
import 'BlocPattern/States_login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Bloc_login authenticationBloc;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => Bloc_login()..add(AppStartedEvent()),
        child: MaterialApp(home: BlocBuilder<Bloc_login, Login_States>(
            builder: (BuildContext context, Login_States state) {
          if (state is SplashState) {
            return Splash();
          } else if (state is LogInState) {
            return LoginScreen();
          } else if (state is WelcomeState) {
            return Welcome_Screen(uname: state.uname1);
          } else if (state is LoadingState) {
            return Loading_Scrreen();
          }
        })));
  }
}
