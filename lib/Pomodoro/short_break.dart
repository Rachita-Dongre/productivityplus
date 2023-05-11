import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:productivityplus/display_variables.dart';

class ShortBreakTimer extends StatefulWidget {
  const ShortBreakTimer({super.key});

  @override
  State<ShortBreakTimer> createState() => _ShortBreakTimerState();
}

class _ShortBreakTimerState extends State<ShortBreakTimer> {
  int duration = breakTime;
  final CountDownController controller = CountDownController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Center(
      child: CircularCountDownTimer(
        controller: controller,
        width: screenWidth * 0.60,
        height: screenHeight * 0.60,
        duration: duration,
        initialDuration: 0,
        fillColor: Colors.white,
        ringColor: Colors.blueAccent,
        backgroundColor: Colors.transparent,
        strokeWidth: 20.0,
        strokeCap: StrokeCap.round,
        textFormat: CountdownTextFormat.S,
        textStyle: const TextStyle(
            fontSize: 33.0, color: Colors.white, fontWeight: FontWeight.bold),
        isTimerTextShown: true,
        isReverse: true, //starts countdown from max duration and goes down to 0
        isReverseAnimation: true,
        autoStart: false,
        onStart: () {
          displayactivity = 'Short Break';
        },
        onComplete: () {
          const Text(
            'Break Over',
            style: TextStyle(fontSize: 20.0, color: Colors.white),
          );
        },
      ),
    );
  }
}
