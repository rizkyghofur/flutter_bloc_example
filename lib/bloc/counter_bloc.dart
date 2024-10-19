import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_event.dart';
import 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  /// Initializes the [CounterBloc].
  ///
  /// The initial state of the bloc is [CounterState] with count set to 0.
  ///
  /// Listens for [IncrementEvent] and [DecrementEvent].
  ///
  /// When an [IncrementEvent] is received, the bloc will emit a new
  /// [CounterState] with the count incremented by 1.
  ///
  /// When a [DecrementEvent] is received, the bloc will emit a new
  /// [CounterState] with the count decremented by 1.
  /// When a [ResetEvent] is received, the bloc will emit a new
  /// [CounterState] with the count reset to 0.
  CounterBloc() : super(CounterState(count: 0)) {
    on<IncrementEvent>((event, emit) {
      emit(CounterState(count: state.count + 1));
    });
    on<DecrementEvent>((event, emit) {
      emit(CounterState(count: state.count - 1));
    });
    on<ResetEvent>((event, emit) {
      emit(CounterState(count: 0));
    });
  }
}
