import 'package:flutter/material.dart';
import 'package:neo_ft/ui/screens/MainScreen.dart';
import 'package:neo_ft/ui/screens/ShowScreen.dart';
import 'package:neo_ft/ui/screens/SplachScreen.dart';

class RouteGenerator {
  //Map args = ModalRoute.of(context).settings.arguments;

  static Route<dynamic> generateRoute(RouteSettings settings) {

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) => SplachScreen(),
            settings: settings
        );
      case '/main':
        return MaterialPageRoute(
            builder: (_) => MainScreen(),
            settings: settings
        );
      case '/show':
        return MaterialPageRoute(
            builder: (_) => ShowScreen(),
            settings: settings
        );
    }
  }
}