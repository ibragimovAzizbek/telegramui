import 'package:flutter/material.dart';
import 'package:telegramui/core/components/theme/theme_comp.dart';
import 'package:telegramui/routes/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Telegram Ui',
      theme: lightMode,
      initialRoute: '/auth',
      onGenerateRoute: RouteController.inherentce.onGenerateRoute,
    );
  }
}
