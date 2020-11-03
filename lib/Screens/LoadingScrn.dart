import 'package:flutter/material.dart';
import 'dart:io';

class Loading_Scrreen extends StatelessWidget {
  String name;
  String password;
  final myController = TextEditingController();
  //Logout_Scrreen({Key key, this.name, this.password}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text('LOGOUT Screen')),
      body: Center(
        child: SizedBox(
            width: 40.0,
            height: 40.0,
            child: const CircularProgressIndicator(
                backgroundColor: Colors.black,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.red))),
      ),
    );
    // ignore: dead_code
    // sleep(Duration(seconds: 5));
  }
}
