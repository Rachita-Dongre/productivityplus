// home screen of app (appears after login)

import 'package:flutter/material.dart';
import 'package:productivityplus/Pomodoro/pomodoro.dart';
import 'package:productivityplus/screens.dart/settings_screen.dart';
import 'package:productivityplus/screens.dart/statistics_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int myIndex = 0;
  List<Widget> screenList = const [
    HomePage(),
    StatisticsPage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Let's get productive!"),
          backgroundColor: const Color.fromARGB(255, 21, 66, 191),
        ),
        body: const Material(child: Pomodoro()),
      ),
    );
  }
}
