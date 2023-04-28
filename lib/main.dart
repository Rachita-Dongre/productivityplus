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
      home: const RegisterPage(),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        //"/": (context) => LoginPage(),
        MyRoutes.loginRoute: (context) => const LoginPage(),
        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.registerRoute: (context) => const RegisterPage(),
        // MyRoutes.emailVerificationRoute: (context) => EmailVerificationPage(),
        // MyRoutes.statisticsRoute: (context) => StatisticsPage(),
        // MyRoutes.settingsRoute: (context) => SettingsPage(),
      },
    );
  }
}




/**
 * Logic for implementing the stats feature.
 * 
 * So, I'll probably count the times timer was run (that'll be three variables, 
 * each one for tracking 1: pomodoro sessions, 2: short breaks, 3: long breaks.) Then we'll add up them and 
 * keep updating the values as per the app usage. This data will be used to calculate and maintain the statics.
 * 
 * Another feature can be maintining the daily streaks aka tracking the app use of the user. Probably I'll need another variable for it.
 * 
 * Will, I need different variables for each user? Seems unlikely, highly unlikely.
 * 
 * There are three main components of the app.
 * 1: The authentication (I can see that from the notes app).
 * 2: The main function i.e. pomodoro timer. (have youtube tutorials for that).
 * 3: The stats function, which keep tracks of app use and updates it.
 * 4: Then there's extra feature like theme change and changing the time for sessions and breaks.
 * 
 */