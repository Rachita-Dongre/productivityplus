import 'package:flutter/material.dart';
import 'package:productivityplus/screens.dart/home_screen.dart';
import 'package:productivityplus/screens.dart/settings_screen.dart';
import 'package:productivityplus/screens.dart/statistics_screen.dart';

class MenuItem {
  final IconData iconData;
  final String text;
  const MenuItem(this.iconData, this.text);
}

class NavigationBarPage extends StatefulWidget {
  const NavigationBarPage({super.key});

  @override
  State<NavigationBarPage> createState() => _NavigationBarPageState();
}

class _NavigationBarPageState extends State<NavigationBarPage> {
  final menuItemList = const <MenuItem>[
    MenuItem(Icons.home, 'Home'),
    MenuItem(Icons.analytics, 'Statistics'),
    MenuItem(Icons.settings, 'Settings'),
  ];

  int index = 0;
  final _buildBody = const <Widget>[
    HomePage(),
    StatisticsPage(),
    SettingsPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (x) {
          setState(() {
            index = x;
          });
        },
        elevation: 16.0,
        showUnselectedLabels: true,
        // unselectedItemColor: ,
        // selectedItemColor: ,
        items: menuItemList
            .map((MenuItem menuItem) => BottomNavigationBarItem(
                  //backgroundColor: colors[index],
                  icon: Icon(menuItem.iconData),
                  label: menuItem.text,
                ))
            .toList(),
      ),
      body: _buildBody[index],
    );
  }
}
