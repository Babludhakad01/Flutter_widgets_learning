import 'package:demo_project/Bloc%20&%20Cubit/Multi_Screen_bloc_share/cart_bloc/cart_bloc.dart';
import 'package:demo_project/Bloc%20&%20Cubit/Multi_Screen_bloc_share/cart_bloc/cart_event.dart';
import 'package:demo_project/Bloc%20&%20Cubit/Multi_Screen_bloc_share/cart_bloc/cart_state.dart';
import 'package:demo_project/Bloc%20&%20Cubit/Multi_Screen_bloc_share/cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //Existing Bloc instance fetch
    final cartBloc = BlocProvider.of<CartBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home Screen",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
        backgroundColor: Colors.teal,

        actions: [
          // Cart Icon ke Sath Item Count
          BlocBuilder<CartBloc, CartState>(
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.all(8),
                child: Center(
                  child: Text(
                    "${state.items.isEmpty ? "" : state.items.length}",
                  ),
                ),
              );
            },
          ),

          IconButton(
            onPressed: () {
              // Existing Bloc ko Cart Screen me Pass kr rahe hai using .value
              Navigator.push(
                context,

                MaterialPageRoute(
                  builder: (_) {
                    return BlocProvider.value(
                      // existing instance pass
                      value: cartBloc,
                      child: const CartScreen(),
                    );
                  },
                ),
              );
            },
            icon: Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: Center(
        child: Row(
          children: [
            ElevatedButton(
              onPressed: () {
                // new Product add
                cartBloc.add(
                  AddItemEvent("Product ${cartBloc.state.items.length + 1}"),
                );
              },
              child: const Text("Add Item Cart"),
            ),

            SizedBox(width: 10),

            ElevatedButton(
              onPressed: () {
                // Remove  Product

                final index = cartBloc.state.items.length - 1;

                if (index >= 0) {
                  cartBloc.add(RemoveItemEvent(index));
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text("Item Removed")));
                }
              },
              child: const Text("Remove Item Cart"),
            ),
          ],
        ),
      ),
    );
  }
}
