import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_bloc2/BlocPattern/Bloc_login.dart';
import 'package:login_bloc2/BlocPattern/Events_login.dart';
import 'package:login_bloc2/BlocPattern/States_login.dart';

class Welcome_Screen extends StatelessWidget {
  String uname;
  Welcome_Screen({Key key, this.uname}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Bloc_login counterBloc = BlocProvider.of<Bloc_login>(context);
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.green, title: Text('WELCOME SCREEN')),
        body: BlocBuilder<Bloc_login, Login_States>(
            builder: (BuildContext context, Login_States state) {
          return Center(
              child: Column(
            children: [
              SizedBox(height: 50),
              Text(
                '   Welcome Screen',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 40),
              ),
              SizedBox(height: 30),
              Text(
                "Logged in by ${uname}",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(height: 60),
              FlatButton(
                color: Colors.green,
                onPressed: () {
                  counterBloc.add(LogoutEvent());
                },
                child: Text(
                  "LOGOUT",
                ),
              )
            ],
          ));
        }));
  }
}
