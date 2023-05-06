//settings page for the app.

import 'package:flutter/material.dart';
import 'package:productivityplus/screens.dart/statistics_screen.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  int pomodoroTime = 25;
  int breakTime = 5;
  int longBreakTime = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
        backgroundColor: const Color.fromARGB(255, 21, 66, 191),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff1542bf), Color(0xff51a8ff)],
              begin: FractionalOffset(0.5, 1),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20.0,
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                child: Text(
                  "DURATIONS",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              //durations card
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xff1542bf), Color(0xff51a8ff)],
                      begin: FractionalOffset(0.5, 1),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                              color: Colors.white30,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          elevation: 10.0,
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Pomodoro :",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0),
                                ),
                              ),
                              const SizedBox(
                                width: 45.0,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    pomodoroTime--;
                                  });
                                },
                                child: const Icon(Icons.minimize),
                              ),
                              const SizedBox(
                                width: 15.0,
                              ),
                              Text(
                                "$pomodoroTime",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0),
                              ),
                              const SizedBox(
                                width: 15.0,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    pomodoroTime++;
                                  });
                                },
                                child: const Icon(Icons.add),
                              )
                            ],
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                              color: Colors.white30,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          elevation: 10.0,
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Short Break :",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0),
                                ),
                              ),
                              const SizedBox(
                                width: 35.0,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    breakTime--;
                                  });
                                },
                                child: const Icon(Icons.minimize),
                              ),
                              const SizedBox(
                                width: 15.0,
                              ),
                              Text(
                                "$breakTime",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0),
                              ),
                              const SizedBox(
                                width: 25.0,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    breakTime++;
                                  });
                                },
                                child: const Icon(Icons.add),
                              )
                            ],
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                              color: Colors.white30,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          elevation: 10.0,
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Long Break :",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0),
                                ),
                              ),
                              const SizedBox(
                                width: 40.0,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    longBreakTime--;
                                  });
                                },
                                child: const Icon(Icons.minimize),
                              ),
                              const SizedBox(
                                width: 15.0,
                              ),
                              Text(
                                "$longBreakTime",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0),
                              ),
                              const SizedBox(
                                width: 15.0,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    longBreakTime++;
                                  });
                                },
                                child: const Icon(Icons.add),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 20.0,
              ),
              //themes section
              const Padding(
                padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                child: Text(
                  "THEMES",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              //themes card
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xff1542bf), Color(0xff51a8ff)],
                      begin: FractionalOffset(0.5, 1),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                height: 40.0,
                                width: 40.0,
                                color: Colors.white,
                              ),
                            ),
                            const Text(
                              "Light",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 50.0,
                        ),
                        Column(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                height: 40.0,
                                width: 40.0,
                                color: Colors.black,
                              ),
                            ),
                            const Text(
                              "Dark",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              //Target section
              const Padding(
                padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                child: Text(
                  "TARGET",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              //target card
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xff1542bf), Color(0xff51a8ff)],
                      begin: FractionalOffset(0.5, 1),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: Colors.white30,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 10.0,
                      child: Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Daily Target :",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15.0),
                            ),
                          ),
                          const SizedBox(
                            width: 35.0,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                pomodoroTime--;
                              });
                            },
                            child: const Icon(Icons.minimize),
                          ),
                          const SizedBox(
                            width: 15.0,
                          ),
                          Text(
                            "$pomodoroTime",
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15.0),
                          ),
                          const SizedBox(
                            width: 15.0,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                pomodoroTime++;
                              });
                            },
                            child: const Icon(Icons.add),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// color: const Color.fromARGB(255, 255, 255, 255),
//                   shape: RoundedRectangleBorder(
//                     side: const BorderSide(
//                       color: Colors.white30,
//                     ),
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                   elevation: 15.0,

// decoration: const BoxDecoration(
//                   gradient: LinearGradient(
//                     colors: [Color(0xff1542bf), Color(0xff51a8ff)],
//                     begin: FractionalOffset(0.5, 1),
//                   ),
//                 ),