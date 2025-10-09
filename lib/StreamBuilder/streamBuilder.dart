import 'dart:async';
import 'package:flutter/material.dart';

class MyStreamBuilderPage extends StatefulWidget {
  final String title;

  const MyStreamBuilderPage({super.key, required this.title});

  @override
  State<MyStreamBuilderPage> createState() => _MyStreamBuilderPage();
}

class _MyStreamBuilderPage extends State<MyStreamBuilderPage> {
  int _count = 0;
  final StreamController<int> _streamController = StreamController<int>();


  @override
  void initState() {
    super.initState();
    _streamController.add(_count);
  }

  @override
  void dispose() {
    _streamController.close(); // memory leak se bachne ke liye use
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),

      body: Center(
        child: StreamBuilder<int>(
          stream: _streamController.stream, // it is use for listen stream
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Text("Error ${snapshot.error}");
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Text("Waiting for data");
            }

            if (!snapshot.hasData) {
              return Text("No data yet");
            }
            return Text(
              "Count: ${snapshot.data}",
              style: TextStyle(fontSize: 32),
            );
          },
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _count++;
          _streamController.add(_count);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
