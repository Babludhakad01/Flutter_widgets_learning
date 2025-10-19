import 'package:demo_project/switch_steeper_slider_popup_menu/StepperWidget.dart';
import 'package:demo_project/switch_steeper_slider_popup_menu/popupMenu.dart';
import 'package:demo_project/switch_steeper_slider_popup_menu/slideWidget.dart';
import 'package:demo_project/switch_steeper_slider_popup_menu/switch.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      home: const PopupMenuPage(title: "Popup Menu Button"),
    );
  }
}
