import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Center(
        child: Icon(
          Icons.audiotrack,
          color: Colors.white,
          size: 150.0,
        ),
      ),
    );
  }
}
