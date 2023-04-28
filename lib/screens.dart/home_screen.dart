// home screen of app (appears after login)

import 'package:flutter/material.dart';
import 'package:productivityplus/Pomodoro/pomodoro.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Let's get productive!"),
      ),
      body: Material(
        child: Column(
          children: [
            const Pomodoro(),
            // BottomNavigationBar(items: items)
          ],
        ),
      ),
    );
  }
}
