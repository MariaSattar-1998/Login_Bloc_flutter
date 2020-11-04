import 'package:flutter/material.dart';

class RouteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Route Screen'),
        ),
        body: Center(
          child: Column(children: [
            SizedBox(height: 50),
            Text(
              '   ABOUT US',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
            ),
            SizedBox(height: 30),
            RaisedButton(
              color: Colors.blue,
              child: Text('Logout Screen'),
              onPressed: () {
                // Navigator.pushReplacementNamed(context, '/third');
              },
            ),
          ]),
        ));
  }
}
