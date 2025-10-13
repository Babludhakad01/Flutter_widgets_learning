import 'package:flutter/material.dart';

class RefreshIndicatorExample extends StatefulWidget {
  final String title;

  const RefreshIndicatorExample({super.key, required this.title});

  @override
  State<RefreshIndicatorExample> createState() => _RefreshIndicatorExample();
}

class _RefreshIndicatorExample extends State<RefreshIndicatorExample> {
  final List<String> items = ["Apple", "Mango", "Orange", "banana", "grapes"];

  Future<void> _handleRefresh() async {
    await Future.delayed(Duration(seconds: 2));

    setState(() {
      items.add("new Fruit added");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(widget.title),
          backgroundColor: Colors.orange),
      

      body: RefreshIndicator(

        color: Colors.greenAccent,

        backgroundColor: Colors.blue,
        displacement: 50, // position from top to where down show 
        edgeOffset: 30,
        strokeWidth: 3, // thickness of refresher icon
        onRefresh: _handleRefresh,
        triggerMode: RefreshIndicatorTriggerMode.onEdge,
        child: ListView.builder(
         // physics: AlwaysScrollableScrollPhysics(),
          itemCount: items.length,

          itemBuilder: (context, index) {
            return ListTile(title: Text(items[index]));
          },
        ),
      ),
    );
  }
}
