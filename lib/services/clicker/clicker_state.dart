part of 'clicker_bloc.dart';

abstract class ClickerState extends Equatable {
  const ClickerState();

  @override
  List<Object> get props => [];
}

class ClickerInitialState extends ClickerState {
  final int clicks;

  const ClickerInitialState({
    this.clicks = 0,
  });

  @override
  List<Object> get props => [
        clicks,
      ];
}
