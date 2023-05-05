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
        body: //IndexedStack(
            //   //to navigate between screens
            //   index: myIndex,
            //   children: screenList,
            // ),
            const Material(child: Pomodoro()),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              myIndex = index;
            });
          },
          currentIndex: myIndex,
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
