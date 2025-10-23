import 'package:demo_project/Timer/cubit/timer_cubit.dart';
import 'package:demo_project/Timer/view/timer_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => TimerCubit())],
      child: MaterialApp(
        title: "Flutter Learning",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        ),
        //home: CustomTImePickerExample(),
        // home: const ImagePickerPage(title: "Image Picker"),
        // home: const ImplicitAnimationExample(title: "Animations"),
        // home: const ExplicitAnimationPage(title: "Explicit Animations"),
        // home: const SwitchWidgetPage(title: "Switch Page "),
        // home: const StepperWidget(title: "Stepper Widget "),
        // home: const SlideWidget(title: "Slider  Widget "),
        // home: const PopupMenuPage(title: "Popup Menu Button"),
        // home: const CounterBlocExample(),
        // home: const CounterCubitExample(),
        home: const TimerPage(),
      ),
    );
  }
}
