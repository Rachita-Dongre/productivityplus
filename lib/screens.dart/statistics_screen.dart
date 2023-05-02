//statistics screen containing all app use stats of the user

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

///
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
///

class StatisticsPage extends StatefulWidget {
  const StatisticsPage({super.key});

  @override
  State<StatisticsPage> createState() => _StatisticsPageState();
}

class _StatisticsPageState extends State<StatisticsPage> {
  @override
  Widget build(BuildContext context) {
    int pomodoroSessions = 0;
    int effectiveWorkTime = 0;
    int breakTime = 0;
    bool dailyTarget = false;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Statistics'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff1542bf), Color(0xff51a8ff)],
            begin: FractionalOffset(0.5, 1),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              Card(
                color: Color.fromARGB(35, 0, 0, 255),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    color: Colors.white12,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 15.0,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Track your time!",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Here's the log of your daily app use so that you can keep track of your time and be more productive !",
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              //daily log card
              Card(
                color: const Color.fromARGB(255, 255, 255, 255),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    color: Colors.white30,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 15.0,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
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
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              const Text(
                                'Daily Target:',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                              const SizedBox(
                                width: 80.0,
                              ),
                              Row(
                                children: [
                                  Icon(Icons.done),
                                  Text(
                                    'Achieved',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
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
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              const Text(
                                'Pomodoro sessions:',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                              const SizedBox(
                                width: 60.0,
                              ),
                              Text(
                                '$pomodoroSessions',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                            ],
                          ),
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
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              const Text(
                                'Effective Work Time:',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                              const SizedBox(
                                width: 60.0,
                              ),
                              Text(
                                '$effectiveWorkTime hr',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                            ],
                          ),
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
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              const Text(
                                'Break Time:',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                              const SizedBox(
                                width: 140.0,
                              ),
                              Text(
                                '$breakTime hr',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              //weekly log card
              Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    color: Colors.white30,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 15.0,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
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
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              const Text(
                                'Weekly Target:',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                              const SizedBox(
                                width: 60.0,
                              ),
                              Row(
                                children: [
                                  Icon(Icons.done),
                                  Text(
                                    'Achieved',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
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
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              const Text(
                                'Pomodoro sessions:',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                              const SizedBox(
                                width: 60.0,
                              ),
                              Text(
                                '$pomodoroSessions',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                            ],
                          ),
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
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              const Text(
                                'Effective Work Time:',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                              const SizedBox(
                                width: 60.0,
                              ),
                              Text(
                                '$effectiveWorkTime hr',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                            ],
                          ),
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
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              const Text(
                                'Break Time:',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                              const SizedBox(
                                width: 140.0,
                              ),
                              Text(
                                '$breakTime hr',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              //monthly log card
              Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    color: Colors.white30,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 15.0,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
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
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              const Text(
                                'Monthly Target:',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                              const SizedBox(
                                width: 45.0,
                              ),
                              Row(
                                children: [
                                  Icon(Icons.done),
                                  Text(
                                    'Achieved',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
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
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              const Text(
                                'Pomodoro sessions:',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                              const SizedBox(
                                width: 60.0,
                              ),
                              Text(
                                '$pomodoroSessions',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                            ],
                          ),
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
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              const Text(
                                'Effective Work Time:',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                              const SizedBox(
                                width: 60.0,
                              ),
                              Text(
                                '$effectiveWorkTime hr',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                            ],
                          ),
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
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              const Text(
                                'Break Time:',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                              const SizedBox(
                                width: 140.0,
                              ),
                              Text(
                                '$breakTime hr',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
