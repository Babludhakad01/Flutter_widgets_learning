import 'package:flutter/material.dart';

class KeepAliveExample extends StatefulWidget {
  final dynamic title;

  const KeepAliveExample({super.key, required this.title});

  @override
  State<KeepAliveExample> createState() => _KeepAliveExampleState();
}

class _KeepAliveExampleState extends State<KeepAliveExample> {
  bool keepAlive = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(keepAlive
            ? "KeepAlive: ON (state preserved)"
            : "KeepAlive: OFF (state lost)"),
        actions: [
          Switch(
            value: keepAlive,
            onChanged: (value) {
              setState(() => keepAlive = value);
            },
          ),
        ],
      ),
      body: GridView.builder(
        addAutomaticKeepAlives: keepAlive, // toggle yaha ho raha hai
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: 20,
        itemBuilder: (context, index) {
          return CounterTile(index: index);
        },
      ),
    );
  }
}

class CounterTile extends StatefulWidget {
  final int index;
  const CounterTile({super.key, required this.index});

  @override
  State<CounterTile> createState() => _CounterTileState();
}

class _CounterTileState extends State<CounterTile>
    with AutomaticKeepAliveClientMixin {
  int counter = 0;

  @override
  bool get wantKeepAlive => true; // Important: ye enable karta hai keep alive

  @override
  Widget build(BuildContext context) {
    super.build(context); // Required when using AutomaticKeepAliveClientMixin
    return Card(
      margin: const EdgeInsets.all(10),
      color: Colors.blue.shade100,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Item ${widget.index}",
                style: const TextStyle(fontWeight: FontWeight.bold)),
            Text("Count: $counter"),
            ElevatedButton(
              onPressed: () => setState(() => counter++),
              child: const Text("Increment"),
            ),
          ],
        ),
      ),
    );
  }
}
