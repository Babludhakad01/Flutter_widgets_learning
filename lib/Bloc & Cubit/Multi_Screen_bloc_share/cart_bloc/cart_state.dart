import 'package:equatable/equatable.dart';

class CartState extends Equatable{
  // cart me added Products
  final List<String> items;

  const CartState({this.items = const[]});

  CartState copyWith({List<String>? items}){
    return CartState(items:items?? this.items);
  }

  @override

  List<Object?> get props => [items];
}