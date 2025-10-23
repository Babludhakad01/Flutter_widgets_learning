import 'package:demo_project/Counter/counterBloc.dart';
import 'package:demo_project/Counter/counterState.dart';
import 'package:demo_project/Counter/counter_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBlocExample extends StatefulWidget {
  const CounterBlocExample({super.key});

  @override
  State<CounterBlocExample> createState() => _CounterBlocExampleState();
}

class _CounterBlocExampleState extends State<CounterBlocExample> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterBloc(), // ek baar hi create hoga
      child: const CounterBody(),
    );
  }
}

class CounterBody extends StatelessWidget {
  const CounterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
      ),
      body: BlocBuilder<CounterBloc, CounterState>(
        builder: (context, state) {
          return Text("Counter: ${state.counterValue}");
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<CounterBloc>().add(IncrementEvent());
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
