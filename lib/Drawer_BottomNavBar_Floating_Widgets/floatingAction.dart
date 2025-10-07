import 'package:flutter/material.dart';

class FloatingActionBtnExample extends StatefulWidget {
  final String title;

  const FloatingActionBtnExample({super.key, required this.title});

  @override
  State<FloatingActionBtnExample> createState() => _FloatingActionBtnExample();
}

class _FloatingActionBtnExample extends State<FloatingActionBtnExample> {
  int idx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),

      // Create a drawer

      //LeftSide Drawer
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Floating Action button Pressed value Increase"),
            Text("${idx}"),
          ],
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton.extended(
        // tooltip: "Add increment",
        // focusColor: Colors.black,
        // hoverColor: Colors.grey,
        splashColor: Colors.orange,
        materialTapTargetSize: MaterialTapTargetSize.padded,

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            bottomRight: Radius.circular(12),
          ),
        ),

        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        onPressed: () {
          setState(() {
            idx++;
          });
        },
        icon: Icon(Icons.add),
        label: Text("add item"),
      ),
    );
  }
}
