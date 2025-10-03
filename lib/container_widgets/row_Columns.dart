import 'package:flutter/material.dart';

class RowPage extends StatefulWidget {
  const RowPage({super.key, required this.title});

  final String title;

  @override
  State<RowPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<RowPage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body:Container(
        height: 200,
        color: Colors.grey,

        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("A", style: TextStyle(color: Colors.blue),),
            Text("B"),
            Text("C"),
            Text("D"),

          ],
        ),
      )
    );
  }
}