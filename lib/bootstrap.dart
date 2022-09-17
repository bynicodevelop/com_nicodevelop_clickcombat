import 'dart:async';

import 'package:com_nicodevelop_clickcombat/services/timer/timer_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Bootstrap extends StatefulWidget {
  final Widget child;

  const Bootstrap({
    super.key,
    required this.child,
  });

  @override
  State<Bootstrap> createState() => _BootstrapState();
}

class _BootstrapState extends State<Bootstrap> {
  @override
  void initState() {
    super.initState();

    context.read<TimerBloc>().add(OnTimerInitEvent());

    Timer.periodic(
      const Duration(
        seconds: 1,
      ),
      (_) => context.read<TimerBloc>().add(OnTimerEvent()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
