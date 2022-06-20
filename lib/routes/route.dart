import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:telegramui/views/auth/auth_page.dart';

class RouteController {
  static final RouteController _inheretence = RouteController._init();

  static RouteController get inherentce => _inheretence;

  RouteController._init();

  Route? onGenerateRoute(RouteSettings settings) {
    var args = settings.arguments;

    switch (settings.name) {
      case '/auth':
        return MaterialPageRoute(
          builder: (context) => AuthPage(),
        );
    }
  }
}
