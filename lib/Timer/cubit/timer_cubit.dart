import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'timer_state.dart';

class TimerCubit extends Cubit<TimerState> {
  TimerCubit() : super(const TimerInitial(0));

  Timer? _timer;

  void startTimer() {
    if (state is TimerRunning) return;

    emit(TimerRunning(state.seconds));
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      final newSeconds = state.seconds + 1;
      emit(TimerRunning(newSeconds));
    });
  }

  void stopTimer() {
    _timer?.cancel();
    emit(TimerStopped(state.seconds));
  }

  void resetTimer() {
    _timer?.cancel();
    emit(const TimerInitial(0));
  }

  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
