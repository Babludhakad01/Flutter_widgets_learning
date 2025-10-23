import 'package:equatable/equatable.dart';

abstract class CartEvent extends Equatable {
  const CartEvent();

  @override
  List<Object?> get props => [];
}

// Ye Event tab Trigger hoga jab user product add krega
class AddItemEvent extends CartEvent {
  final String item;

  const AddItemEvent(this.item);

  @override
  List<Object?> get props => [item];
}

class RemoveItemEvent extends CartEvent {
  final int index;

  const RemoveItemEvent(this.index);

  @override
  List<Object?> get props => [index];
}
