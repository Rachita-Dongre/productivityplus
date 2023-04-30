import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Pomodoro extends StatefulWidget {
  const Pomodoro({super.key});

  @override
  State<Pomodoro> createState() => _PomodoroState();
}

class _PomodoroState extends State<Pomodoro> {
  double percent = 0;
  static int timeInMinute = 25;
  int timeInSec = timeInMinute * 60;

  //start timer function
  void startTimer() {}

  //stop timer function
  void stopTimer() {}

  //pause timer function
  void pauseTimer() {}

  //reset timer function
  void resetTimer() {}

  //is timer running
  // bool isTimerRunning() {
  //   //condition to check if the timer is running or not
  //   if()
  //   {
  //     return true;
  //   } else {
  //     return false;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              "Pomodoro",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          // Expanded(
          //   child: CircularPercentIndicator(
          //     radius: 250.0,
          //     percent: percent,
          //     animation: true,
          //     animateFromLastPercent: true,
          //     lineWidth: 20.0,
          //     progressColor: Colors.white,
          //     backgroundWidth: 50.0,
          //     center: Text(
          //       "$timeInMinute",
          //       style: const TextStyle(
          //         color: Colors.white,
          //         fontSize: 80.0,
          //       ),
          //     ),
          //   ),
          // ),
          // const SizedBox(
          //   height: 20.0,
          // ),
        ],
      ),
    );
  }
}



// Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Color(0xff1542bf), Color(0xff51a8ff)],
//             begin: FractionalOffset(0.5, 1),
//           ),
//         ),
//         width: double.infinity,