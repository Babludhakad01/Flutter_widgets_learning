import 'package:demo_project/Timer/view/timer_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/timer_cubit.dart';
import '../cubit/timer_state.dart';

class TimerPage extends StatelessWidget {
  const TimerPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<TimerCubit>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Bloc Timer Example"),
        backgroundColor: Colors.teal,
      ),

      body: Center(
        child: BlocBuilder<TimerCubit,TimerState>(
          buildWhen: (prev, curr) => prev.seconds != curr.seconds,

          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TimerDisplay(seconds: state.seconds),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton.icon(
                      icon: const Icon(Icons.play_arrow),
                      label: const Text("Start"),
                      onPressed: cubit.startTimer,
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
