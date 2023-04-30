// home screen of app (appears after login)

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
        body: Material(
          child: Column(
            children: [
              Pomodoro(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              //backgroundColor:
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.analytics),
              label: 'Home',
              //backgroundColor:
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Home',
              //backgroundColor:
            ),
          ],
        ),
      ),
    );
  }
}
