import 'package:flutter/material.dart';
import 'package:productivityplus/screens.dart/home_screen.dart';
import 'package:productivityplus/screens.dart/login_screen.dart';
import 'package:productivityplus/screens.dart/register_screen.dart';
import 'package:productivityplus/utils/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RegisterPage(),
      initialRoute: MyRoutes.registerRoute,
      routes: {
        //"/": (context) => LoginPage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        // MyRoutes.registerRoute: (context) => RegisterPage(),
        // MyRoutes.emailVerificationRoute: (context) => EmailVerificationPage(),
        // MyRoutes.statisticsRoute: (context) => StatisticsPage(),
        // MyRoutes.settingsRoute: (context) => SettingsPage(),
      },
    );
  }
}
