import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'clicker_event.dart';
part 'clicker_state.dart';

class ClickerBloc extends Bloc<ClickerEvent, ClickerState> {
  ClickerBloc() : super(const ClickerInitialState()) {
    on<OnClickEvent>((event, emit) {
      final currentState = state as ClickerInitialState;

      emit(ClickerInitialState(
        clicks: currentState.clicks + 1,
      ));
    });
  }
}
