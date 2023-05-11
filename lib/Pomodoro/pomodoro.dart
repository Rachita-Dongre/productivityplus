import 'package:flutter/material.dart';
import 'package:productivityplus/display_variables.dart';
import 'package:neon_circular_timer/neon_circular_timer.dart';

class Pomodoro extends StatefulWidget {
  const Pomodoro({super.key});

  @override
  State<Pomodoro> createState() => _PomodoroState();
}

class _PomodoroState extends State<Pomodoro> {
  static int timeInMinute = pomodoroTime;
  int timeInSec = timeInMinute * 60;
  String activity = displayactivity;
  //pomodoro timer variables
  int duration = timeInMinute * 60;
  final isRunning = timeInMinute > 0;
  final isComplete = timeInMinute == 0;
  //final CountDownController controller = CountDownController();
  //neon countdown controller
  final CountDownController controller = CountDownController();
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
          // const PomodoroTimer(),
          Center(
            child: NeonCircularTimer(
              width: screenWidth * 0.60,
              duration: duration,
              controller: controller,
              initialDuration: 0,
              isTimerTextShown: true,
              textFormat: TextFormat.S,
              autoStart: false,
              isReverse: true,
              strokeCap: StrokeCap.round,
              strokeWidth: 12,
              backgroudColor: Colors.transparent,
              innerFillColor: Colors.white,
              outerStrokeColor: Colors.blueAccent,
              neumorphicEffect: true,
              neonColor: Colors.white54,
              onStart: () {},
              onComplete: () {},
            ),
          ),
          const SizedBox(
            height: 50.0,
          ),
          button(
            title: "Start",
            onPressed: () {
              controller.start();
            },
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
                child: button(
                  title: isRunning ? "Pause" : "Resume",
                  onPressed: () {
                    if (isRunning) {
                      controller.pause();
                    } else {
                      controller.resume();
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: button(
                  title: "Reset",
                  onPressed: () {
                    controller.restart();
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget button({required String title, VoidCallback? onPressed}) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        foregroundColor: const Color.fromARGB(255, 0, 136, 255),
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 17.0,
        ),
      ),
    );
  }
}

// child: CircularCountDownTimer(
            //   controller: controller,
            //   width: screenWidth * 0.60,
            //   height: screenHeight * 0.35,
            //   duration: duration,
            //   initialDuration: 0,
            //   fillColor: Colors.white,
            //   ringColor: Colors.blueAccent,
            //   backgroundColor: Colors.transparent,
            //   strokeWidth: 20.0,
            //   strokeCap: StrokeCap.round,
            //   textFormat: CountdownTextFormat.S,
            //   textStyle: const TextStyle(
            //       fontSize: 50.0,
            //       color: Colors.white,
            //       fontWeight: FontWeight.bold),
            //   isTimerTextShown: true,
            //   isReverse:
            //       true, //starts countdown from max duration and goes down to 0
            //   isReverseAnimation: true,
            //   autoStart: false,
            //   onStart: () {
            //     displayactivity = 'Pomodoro';
            //   },
            //   onComplete: () {
            //     const Text(
            //       'Session Complete',
            //       style: TextStyle(fontSize: 20.0, color: Colors.white),
            //     );
            //   },
            // ),

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
