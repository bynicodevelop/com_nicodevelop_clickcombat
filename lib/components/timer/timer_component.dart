import 'package:com_nicodevelop_clickcombat/utils/get_text_timer.dart';
import 'package:flutter/material.dart';

class TimerComponent extends StatelessWidget {
  final int time;
  final double size;
  final Color color;

  const TimerComponent({
    super.key,
    required this.time,
    this.size = 16.0,
    this.color = Colors.purple,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.only(
        left: 16.0,
        right: 16.0,
        top: 8.0,
        bottom: 10.0,
      ),
      child: SizedBox(
        width: size * 3.2,
        height: size,
        child: Text(
          getTextTimer(time),
          style: TextStyle(
            color: Colors.white,
            fontSize: size,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
