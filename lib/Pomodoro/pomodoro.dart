import 'package:flutter/material.dart';
import 'package:productivityplus/Pomodoro/long_break.dart';
import 'package:productivityplus/Pomodoro/pomodoro_timer.dart';
import 'package:productivityplus/Pomodoro/short_break.dart';
import 'package:productivityplus/display_variables.dart';
import 'package:neon_circular_timer/neon_circular_timer.dart';

class Pomodoro extends StatefulWidget {
  const Pomodoro({super.key});

  @override
  State<Pomodoro> createState() => _PomodoroState();
}

class _PomodoroState extends State<Pomodoro> {
  // static int timeInMinute = pomodoroTime;
  // String activity = displayactivity;
  // //pomodoro timer variables
  // int duration = timeInMinute;
  // final isRunning = timeInMinute > 0;
  // final isComplete = timeInMinute == 0;
  //neon countdown controller
  final CountDownController controller = CountDownController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xff1542bf), Color(0xff51a8ff)],
          begin: FractionalOffset(0.5, 1),
        ),
      ),
      width: screenWidth * 1,
      height: screenHeight * 1,
      //width: double.infinity,
      // height: 1000.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "$displayactivity",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 30.0,
              ),
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          //PomodoroTimer,
          const PomodoroTimer(),
          //short break timer
          //const ShortBreakTimer(),
          //long break timer
          //const LongBreakTimer(),
        ],
      ),
    );
  }
}
