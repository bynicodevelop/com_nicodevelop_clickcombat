import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // TimerComponent(time: time),
            const Text("Vous pouvez encore prendre place dans l'arène"),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Jouer"),
            ),
          ],
        ),
      ),
    );
  }
}
