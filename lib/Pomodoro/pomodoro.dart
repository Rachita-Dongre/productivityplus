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
  String activity = 'Pomodoro';

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
            padding: const EdgeInsets.all(12.0),
            child: Text(
              "$activity",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 30.0,
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          CircularPercentIndicator(
            radius: screenWidth * 0.17,
            percent: percent,
            animation: true,
            animateFromLastPercent: true,
            lineWidth: 20,
            progressColor: Colors.white,
            backgroundWidth: 50,
            center: Text(
              "$timeInMinute",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 80.0,
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(0, 255, 255, 0),
                foregroundColor: const Color.fromARGB(0, 0, 8, 255)),
            onPressed: () {},
            child: const Text('Start'),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(0, 255, 255, 0),
                      foregroundColor: const Color.fromARGB(0, 0, 8, 255)),
                  onPressed: () {},
                  child: const Text('Pause'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(0, 255, 255, 0),
                      foregroundColor: const Color.fromARGB(0, 0, 8, 255)),
                  onPressed: () {},
                  child: const Text('Reset'),
                ),
              ),
            ],
          ),
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