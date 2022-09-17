part of 'timer_bloc.dart';

abstract class TimerState extends Equatable {
  const TimerState();

  @override
  List<Object> get props => [];
}

class TimerInitialState extends TimerState {}

class TimerUpdatedState extends TimerState {
  final int time;

  const TimerUpdatedState(
    this.time,
  );

  @override
  List<Object> get props => [
        time,
      ];
}
