import 'package:flutter/material.dart';

class ScrollBarPage extends StatefulWidget {
  final String title;

  const ScrollBarPage({super.key, required this.title});

  @override
  State<ScrollBarPage> createState() => _ScrollBarPage();
}

class _ScrollBarPage extends State<ScrollBarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: List.generate(30, (index) {
            return Padding(
              padding: EdgeInsets.all(8),
              child: Container(
                height: 80,
                color: Colors.blue[100 * (index % 8) + 1],
                child: Center(child: Text("Item $index")),
              ),
            );
          }),
        ),
      ),
    );
  }
}
