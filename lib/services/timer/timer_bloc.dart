import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:com_nicodevelop_clickcombat/utils/align_date_time.dart';
import 'package:equatable/equatable.dart';

part 'timer_event.dart';
part 'timer_state.dart';

class TimerBloc extends Bloc<TimerEvent, TimerState> {
  int _counter = 0;

  TimerBloc() : super(TimerInitialState()) {
    on<OnTimerInitEvent>((event, emit) {
      DateTime now = DateTime.now().toUtc();
      DateTime roundUp = alignDateTime(
        now,
        const Duration(minutes: 1),
        true,
      );

      final int diff = roundUp.difference(now).inSeconds;

      _counter = diff;
    });

    on<OnTimerEvent>((event, emit) {
      if (_counter <= 0) {
        add(OnTimerInitEvent());
      }

      log(_counter.toString());

      emit(TimerUpdatedState(_counter));

      _counter--;
    });
  }
}
