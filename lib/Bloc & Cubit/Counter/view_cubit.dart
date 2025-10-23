import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_cubit.dart';

class CounterCubitExample extends StatefulWidget {
  const CounterCubitExample({super.key});

  @override
  State<CounterCubitExample> createState() => _CounterCubitExampleState();
}

class _CounterCubitExampleState extends State<CounterCubitExample> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(), // ek baar hi create hoga
      child: const CounterPage(),
    );
  }
}

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<CounterCubit>();
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.teal),
      body: BlocBuilder<CounterCubit, CounterState>(
        builder: (context, state) {
          int counter = state is CounterValue ? state.counter : 0;
          return Text("Counter: ${counter}");
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          cubit.increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
