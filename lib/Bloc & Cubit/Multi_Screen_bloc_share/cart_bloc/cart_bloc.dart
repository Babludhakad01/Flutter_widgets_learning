import 'package:flutter_bloc/flutter_bloc.dart';
import 'cart_event.dart';
import 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(const CartState()) {
    // Jab AddItemEvent aaye to item list me add krna
    on<AddItemEvent>((event, emit) {
      final updatedList = List<String>.from(state.items)
        ..add(event.item);
      emit(state.copyWith(items: updatedList));
    });
  }
}