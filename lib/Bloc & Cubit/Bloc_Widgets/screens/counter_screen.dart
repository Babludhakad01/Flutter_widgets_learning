import 'package:demo_project/Bloc_Widgets/cubits/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Screen"),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Bloc Selector : rebuild when selected value changes
            BlocSelector<CounterCubit, int, bool>(
              selector: (count) => count % 2 == 0,
              builder: (context, isEven) {
                return Text(
                  isEven ? "Even Number" : "Odd Number",
                  style: TextStyle(fontSize: 20, color: Colors.blue),
                );
              },
            ),

            SizedBox(height: 20),

            // Bloc Builder : rebuild UI when Counter Changes
            BlocBuilder<CounterCubit, int>(
              builder: (context, count) {
                return Text(
                  "Counter Value : $count",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                );
              },
            ),

            const SizedBox(height: 20),

            // Bloc Listener: trigger snackBar when Counter reaches 5
            BlocListener<CounterCubit, int>(
              listener: (context, state) {
                if (state == 5) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Counter reaches 5 !")),
                  );
                } else if (state == 10) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Counter reaches 10")),
                  );
                }
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () => context.read<CounterCubit>().decrement(),
                    icon: Icon(Icons.remove),
                  ),

                  SizedBox(width: 10),

                  IconButton(
                    onPressed: () => context.read<CounterCubit>().increment(),
                    icon: Icon(Icons.add),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
