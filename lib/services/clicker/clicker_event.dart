part of 'clicker_bloc.dart';

abstract class ClickerEvent extends Equatable {
  const ClickerEvent();

  @override
  List<Object> get props => [];
}

class OnClickEvent extends ClickerEvent {}
