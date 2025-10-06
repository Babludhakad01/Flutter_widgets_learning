import 'package:flutter/material.dart';

class ListViewSeparted extends StatelessWidget {
  const ListViewSeparted({super.key, required title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ListView with Separated")),
      body: ListView.separated(
        itemCount: 10,

        itemBuilder: (context, index) {
          return ListTile(title: Text("Item $index", style: TextStyle(color: Colors.grey),));
        },

        separatorBuilder: (context, index) {
          return Divider( color: Colors.blue,height: 15, thickness: 1,indent: 10,);
        },
      ),
    );
  }
}
