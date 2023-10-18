// home screen of app (appears after login)

import 'package:flutter/material.dart';
import 'package:productivityplus/Pomodoro/pomodoro.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
