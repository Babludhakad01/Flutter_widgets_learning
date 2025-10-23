import 'package:demo_project/Bloc%20&%20Cubit/Multi_Screen_bloc_share/cart_bloc/cart_bloc.dart';
import 'package:demo_project/Bloc%20&%20Cubit/Multi_Screen_bloc_share/cart_bloc/cart_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart Screen"),
        backgroundColor: Colors.orange,
      ),
      body: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          if (state.items.isEmpty) {
            return const Center(
              child: Text("Cart is Empty ", style: TextStyle(fontSize: 30)),
            );
          }

          return ListView.builder(
            itemCount: state.items.length,
            itemBuilder: (context, index) {
              return ListTile(title: Text(state.items[index]));
            },
          );
        },
      ),
    );
  }
}
