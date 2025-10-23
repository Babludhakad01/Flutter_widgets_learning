import 'package:flutter_bloc/flutter_bloc.dart';
import 'counter_event.dart';
import 'counterState.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState>{
  CounterBloc() : super(const CounterState(0)){
    //When IncrementEvent Occurs-> increment Counter
    on<IncrementEvent>((event,emit){
      final newVal = state.counterValue+1;
      emit(CounterState(newVal));
    });
  }
}