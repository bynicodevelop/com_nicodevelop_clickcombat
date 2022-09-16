import 'package:com_nicodevelop_clickcombat/services/clicker/clicker_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterComponent extends StatelessWidget {
  const CounterComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClickerBloc, ClickerState>(
      builder: (context, state) {
        final ClickerInitialState counter = (state as ClickerInitialState);

        return Text(
          counter.clicks.toString(),
          style: const TextStyle(
            fontSize: 52.0,
          ),
        );
      },
    );
  }
}
