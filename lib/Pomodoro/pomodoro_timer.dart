import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:productivityplus/display_variables.dart';
import 'package:productivityplus/Pomodoro/pomodoro.dart';

class PomodoroTimer extends StatefulWidget {
  const PomodoroTimer({super.key});

  @override
  State<PomodoroTimer> createState() => _PomodoroTimerState();
}

class _PomodoroTimerState extends State<PomodoroTimer> {
  int duration = pomodoroTime;
  final CountDownController controller = CountDownController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Center(
      child: CircularCountDownTimer(
        controller: controller,
        width: screenWidth * 0.60,
        height: screenHeight * 0.35,
        duration: duration,
        initialDuration: 0,
        fillColor: Colors.white,
        ringColor: Colors.blueAccent,
        backgroundColor: Colors.transparent,
        strokeWidth: 20.0,
        strokeCap: StrokeCap.round,
        textFormat: CountdownTextFormat.S,
        textStyle: const TextStyle(
            fontSize: 50.0, color: Colors.white, fontWeight: FontWeight.bold),
        isTimerTextShown: true,
        isReverse: true, //starts countdown from max duration and goes down to 0
        isReverseAnimation: true,
        autoStart: false,
        onStart: () {
          displayactivity = 'Pomodoro';
        },
        onComplete: () {
          const Text(
            'Session Complete',
            style: TextStyle(fontSize: 20.0, color: Colors.white),
          );
        },
      ),
    );
  }

  Widget button({required String title, VoidCallback? onPressed}) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          foregroundColor: const Color.fromARGB(255, 0, 136, 255),
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: const TextStyle(color: Colors.white, fontSize: 17.0),
        ),
      ),
    );
  }
}
