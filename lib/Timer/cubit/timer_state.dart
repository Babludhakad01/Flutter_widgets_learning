import 'package:equatable/equatable.dart';

abstract class TimerState extends Equatable {
  final int seconds;

  const TimerState(this.seconds);

  @override
  // TODO: implement props
  List<Object?> get props => [seconds];
}

class TimerInitial extends TimerState {
  const TimerInitial(int seconds) : super(seconds);
}

class TimerRunning extends TimerState {
  const TimerRunning(int seconds) : super(seconds);
}

class TimerStopped extends TimerState {
  const TimerStopped(int seconds) : super(seconds);
}
