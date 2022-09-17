import 'package:com_nicodevelop_clickcombat/bootstrap.dart';
import 'package:com_nicodevelop_clickcombat/screens/start_screen.dart';
import 'package:com_nicodevelop_clickcombat/services/clicker/clicker_bloc.dart';
import 'package:com_nicodevelop_clickcombat/services/timer/timer_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.manual,
    overlays: [],
  );

  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MultiBlocProvider(
        providers: [
          BlocProvider<TimerBloc>(
            create: (context) => TimerBloc(),
          ),
          BlocProvider<ClickerBloc>(
            create: (_) => ClickerBloc(),
          ),
        ],
        child: const Bootstrap(
          child: StartScreen(),
        ),
      ),
    );
  }
}
