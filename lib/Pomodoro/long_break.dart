import 'package:flutter/material.dart';
import 'package:neon_circular_timer/neon_circular_timer.dart';
import 'package:productivityplus/display_variables.dart';

class LongBreakTimer extends StatefulWidget {
  const LongBreakTimer({super.key});

  @override
  State<LongBreakTimer> createState() => _LongBreakTimerState();
}

class _LongBreakTimerState extends State<LongBreakTimer> {
  final CountDownController controller = CountDownController();
  static int timeInMinute = pomodoroTime;
  int duration = timeInMinute;
  final isRunning = timeInMinute > 0;
  final isComplete = timeInMinute == 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        NeonCircularTimer(
          width: screenWidth * 0.60,
          duration: duration,
          controller: controller,
          initialDuration: 0,
          isTimerTextShown: true,
          textFormat: TextFormat.S,
          textStyle: const TextStyle(
            fontSize: 50.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          autoStart: true,
          isReverse: true,
          strokeCap: StrokeCap.round,
          strokeWidth: 12,
          backgroudColor: Colors.blueAccent,
          innerFillColor: Colors.white,
          outerStrokeColor: Colors.blueAccent,
          neumorphicEffect: true,
          neonColor: Colors.blue,
          onStart: () {
            displayactivity = "Long Break";
          },
          onComplete: () {
            const Text(
              'Break Over',
              style: TextStyle(fontSize: 20.0, color: Colors.white),
            );
            longBreakCount++;
          },
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
