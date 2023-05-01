// home screen of app (appears after login)

import 'package:flutter/material.dart';
import 'package:productivityplus/Pomodoro/pomodoro.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Let's get productive!"),
        ),
        body: const Material(child: Pomodoro()),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.blueAccent,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.analytics),
              label: 'Statistics',
              backgroundColor: Colors.blueAccent,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
              backgroundColor: Colors.blueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
