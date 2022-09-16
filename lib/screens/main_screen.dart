import 'dart:async';

import 'package:com_nicodevelop_clickcombat/components/clicker/clicker_component.dart';
import 'package:com_nicodevelop_clickcombat/components/counter/counter_component.dart';
import 'package:com_nicodevelop_clickcombat/components/timer/timer_component.dart';
import 'package:com_nicodevelop_clickcombat/utils/align_date_time.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();

    DateTime now = DateTime.now().toUtc();
    DateTime roundUp = alignDateTime(
      now,
      const Duration(minutes: 1),
      true,
    );

    // Différence en secondes
    setState(() {
      _counter = roundUp.difference(now).inSeconds;
    });

    Timer.periodic(
      const Duration(
        seconds: 1,
      ),
      (_) => setState(() {
        if (_counter > 0) _counter--;
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ClickerComponent(
        child: Stack(
          fit: StackFit.expand,
          children: [
            const Positioned.fill(
              child: Align(
                alignment: Alignment.center,
                child: CounterComponent(),
              ),
            ),
            Positioned(
              top: 16.0,
              left: 22.0,
              child: TimerComponent(
                time: _counter,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
