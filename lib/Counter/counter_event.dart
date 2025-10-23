import 'package:equatable/equatable.dart';


abstract class CounterEvent extends Equatable{
  const CounterEvent();

  @override

  List<Object?> get props => [];
}

// Event When User presses the increment button

class IncrementEvent extends CounterEvent{}
class DecrementEvent  extends CounterEvent{}