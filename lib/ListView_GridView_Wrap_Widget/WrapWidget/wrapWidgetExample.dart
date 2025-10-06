import 'package:flutter/material.dart';

class WrapWidgetExample extends StatefulWidget {
  final String title;

  const WrapWidgetExample({super.key, required this.title});

  @override
  State<WrapWidgetExample> createState() => _WrapWidgetExample();
}

class _WrapWidgetExample extends State<WrapWidgetExample> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),

      body: Wrap(
        direction: Axis.horizontal,
        // by default
        spacing: 10,
        // ek item ke beech ka horizontally gap
        runSpacing: 10,

        // vertically gap
        //  alignment: WrapAlignment.spaceBetween,
        // runAlignment: WrapAlignment.spaceEvenly,
        crossAxisAlignment: WrapCrossAlignment.center,
        textDirection: TextDirection.ltr,
        children: List.generate(5, (index) {
          return Chip(label: Text("$index"));
        }),
      ),
    );
  }
}
