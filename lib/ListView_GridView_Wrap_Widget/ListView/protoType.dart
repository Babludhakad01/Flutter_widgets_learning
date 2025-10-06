import 'package:flutter/material.dart';

class PrototypeExample extends StatelessWidget {
  const PrototypeExample({super.key, required title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ListView with prototypeItem")),
      body: ListView.builder(
        itemCount: 20,

        // preload items screen after and before
        cacheExtent: 200,
        // Scroll krte time keyboard automatic hide krna
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        prototypeItem: const ListTile(
          title: Text("Prototype item"),
          subtitle: Text("This defines the height of all items"),
        ),
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("Item $index"),
            subtitle: const Text("Hello!"),
          );
        },
      ),
    );
  }
}
