import 'dart:async';

import 'package:com_nicodevelop_clickcombat/components/timer/timer_component.dart';
import 'package:com_nicodevelop_clickcombat/utils/align_date_time.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.immersive,
    overlays: [],
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();

    DateTime now = DateTime.now().toUtc();
    DateTime roundUp = alignDateTime(
      now,
      const Duration(hours: 1),
      true,
    );

    print(now);
    print(roundUp);

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
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 22.0,
              left: 26.0,
            ),
            child: TimerComponent(
              time: _counter,
            ),
          ),
        ],
      ),
    );
  }
}
