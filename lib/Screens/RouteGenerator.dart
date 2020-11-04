import 'package:flutter/material.dart';
import 'package:login_bloc2/Screens/RouteScreen.dart';
import 'package:route_transitions/route_transitions.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/first':
        return PageRouteTransition(
            animationType: AnimationType.slide_left,
            builder: (context) => RouteScreen());
    }
  }
}
