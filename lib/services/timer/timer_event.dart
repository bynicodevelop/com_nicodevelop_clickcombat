part of 'timer_bloc.dart';

abstract class TimerEvent extends Equatable {
  const TimerEvent();

  @override
  List<Object> get props => [];
}

class OnTimerInitEvent extends TimerEvent {}

class OnTimerEvent extends TimerEvent {}
