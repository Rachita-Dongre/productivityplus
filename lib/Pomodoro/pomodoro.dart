import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/index.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:productivityplus/display_variables.dart';
import 'package:productivityplus/Pomodoro/pomodoro_timer.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';

class Pomodoro extends StatefulWidget {
  const Pomodoro({super.key});

  @override
  State<Pomodoro> createState() => _PomodoroState();
}

class _PomodoroState extends State<Pomodoro> {
  static int timeInMinute = pomodoroTime;
  int timeInSec = timeInMinute * 60;
  String activity = displayactivity;

  @override
  void initState() {
    super.initState();
  }

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
              "$activity",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 30.0,
              ),
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          PomodoroTimer(),
          // CountdownTimer(
          //   endTime: endTime,
          //   endWidget: const Icon(Icons.done),
          //   widgetBuilder: (buildcontext, currentRemainingTime) {
          //     CurrentRemainingTime;
          //     return CircularPercentIndicator(
          //       radius: screenWidth * 0.30,
          //       percent: percent,
          //       animation: true,
          //       animateFromLastPercent: true,
          //       lineWidth: 20,
          //       progressColor: Colors.white,
          //       backgroundColor: Colors.blueAccent,
          //       backgroundWidth: 20,
          //       center: Text(
          //         "$timeInMinute",
          //         style: const TextStyle(
          //           color: Colors.white,
          //           fontSize: 80.0,
          //         ),
          //       ),
          //     );
          //   },
          //   onEnd: onEnd,
          // ),
          const SizedBox(
            height: 50.0,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              foregroundColor: const Color.fromARGB(255, 0, 136, 255),
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            ),
            onPressed: () {},
            child: const Text(
              'Start',
              style: TextStyle(fontSize: 17.0),
            ),
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
                    backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                    foregroundColor: const Color.fromARGB(255, 0, 136, 255),
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Pause',
                    style: TextStyle(fontSize: 17.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                    foregroundColor: const Color.fromARGB(255, 0, 136, 255),
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Reset',
                    style: TextStyle(fontSize: 17.0),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}






















// class Pomodoro extends StatefulWidget {
//   const Pomodoro({super.key});

//   @override
//   State<Pomodoro> createState() => _PomodoroState();
// }

// class _PomodoroState extends State<Pomodoro> {
//   double percent = 0;
//   static int timeInMinute = pomodoroTime;
//   int timeInSec = timeInMinute * 60;
//   String activity = 'Pomodoro';

//   @override
//   void initState() {
//     super.initState();
//   }

//   //start pomodoro timer function
//   void startPomodoroTimer() {}

//   //start short break timer function
//   void startShortBreakTimer() {}

//   //start long break timer function
//   void startLongBreakTimer() {}

//   //stop timer function
//   void stopTimer() {}

//   //pause timer function
//   void pauseTimer() {}

//   //reset timer function
//   void resetTimer() {}

//   //is timer running
//   // bool isTimerRunning() {
//   //   //condition to check if the timer is running or not
//   //   if()
//   //   {
//   //     return true;
//   //   } else {
//   //     return false;
//   //   }
//   // }

//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     double screenHeight = MediaQuery.of(context).size.height;

//     return Container(
//       decoration: const BoxDecoration(
//         gradient: LinearGradient(
//           colors: [Color(0xff1542bf), Color(0xff51a8ff)],
//           begin: FractionalOffset(0.5, 1),
//         ),
//       ),
//       width: screenWidth * 1,
//       height: screenHeight * 1,
//       //width: double.infinity,
//       // height: 1000.0,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Text(
//               "$activity",
//               style: const TextStyle(
//                 color: Colors.white,
//                 fontSize: 30.0,
//               ),
//             ),
//           ),
//           const SizedBox(
//             height: 15.0,
//           ),
//           Container(
//             child: CircularPercentIndicator(
//               radius: screenWidth * 0.30,
//               percent: percent,
//               animation: true,
//               animateFromLastPercent: true,
//               lineWidth: 20,
//               progressColor: Colors.white,
//               backgroundColor: Colors.blueAccent,
//               backgroundWidth: 20,
//               center: Text(
//                 "$timeInMinute",
//                 style: const TextStyle(
//                   color: Colors.white,
//                   fontSize: 80.0,
//                 ),
//               ),
//             ),
//           ),
//           const SizedBox(
//             height: 50.0,
//           ),
//           ElevatedButton(
//             style: ElevatedButton.styleFrom(
//               backgroundColor: const Color.fromARGB(255, 255, 255, 255),
//               foregroundColor: const Color.fromARGB(255, 0, 136, 255),
//               padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
//             ),
//             onPressed: () {
//               startPomodoroTimer();
//             },
//             child: const Text(
//               'Start',
//               style: TextStyle(fontSize: 17.0),
//             ),
//           ),
//           const SizedBox(
//             height: 20.0,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: const Color.fromARGB(255, 255, 255, 255),
//                     foregroundColor: const Color.fromARGB(255, 0, 136, 255),
//                     padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
//                   ),
//                   onPressed: () {
//                     pauseTimer();
//                   },
//                   child: const Text(
//                     'Pause',
//                     style: TextStyle(fontSize: 17.0),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: const Color.fromARGB(255, 255, 255, 255),
//                     foregroundColor: const Color.fromARGB(255, 0, 136, 255),
//                     padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
//                   ),
//                   onPressed: () {
//                     resetTimer();
//                   },
//                   child: const Text(
//                     'Reset',
//                     style: TextStyle(fontSize: 17.0),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
