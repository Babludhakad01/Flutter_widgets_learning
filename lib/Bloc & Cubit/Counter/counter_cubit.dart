import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_state.dart';

// Cubit Class


class CounterCubit extends Cubit<CounterState>{
  CounterCubit() : super(CounterInitial());

  void increment(){
    int currentValue = state is CounterValue ? (state as CounterValue).counter : 0;
    emit(CounterValue(currentValue+1));
  }
}