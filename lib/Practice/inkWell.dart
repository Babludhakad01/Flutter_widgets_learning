import 'package:flutter/material.dart';

class ButtonPractice extends StatefulWidget {
  final String title;

  const ButtonPractice({super.key, required this.title});

  @override
  State<ButtonPractice> createState() => _ButtonPracticeState();
}

class _ButtonPracticeState extends State<ButtonPractice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),

      body: Center(
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
          ),
        ),
      ),
    );
  }
}
