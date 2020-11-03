import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_bloc2/BlocPattern/Bloc_login.dart';
import 'package:login_bloc2/BlocPattern/Events_login.dart';
import 'package:login_bloc2/BlocPattern/States_login.dart';

class LoginScreen extends StatelessWidget {
  var myemail = TextEditingController();
  var mypassword = TextEditingController();
  String email;
  String password;
  @override
  Widget build(BuildContext context) {
    final Bloc_login counterBloc = BlocProvider.of<Bloc_login>(context);

    return Scaffold(
      appBar:
          AppBar(backgroundColor: Colors.green, title: Text('Login Screen')),
      body: BlocBuilder<Bloc_login, Login_States>(
        builder: (BuildContext context, Login_States state) {
          return Center(
              child: Column(
            children: [
              SizedBox(height: 40),
              TextFormField(
                controller: myemail,
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'Name*',
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: mypassword,
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'Password*',
                ),
              ),
              SizedBox(height: 40),
              RaisedButton(
                color: Colors.green,
                child: Text('Login'),
                onPressed: () {
                  email = myemail.text;
                  password = mypassword.text;
                  counterBloc.add(LogInEvent(email, password));
                },
              )
            ],
          ));
        },
      ),
    );
  }
}
