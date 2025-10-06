import 'package:flutter/material.dart';

class GridViewPageCount extends StatelessWidget {
  const GridViewPageCount({super.key, required title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("GridView Count all Properties")),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10, // Column Gap
        mainAxisSpacing: 10, // Row Gap
        padding: EdgeInsets.all(12),
        physics: BouncingScrollPhysics(),

        children: List.generate(18, (index) {
          return Container(
            // alignment: Alignment.center,

            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              'Item ${index + 1}',
              style: const TextStyle(color: Colors.white, fontSize: 18),
            ),
          );
        }),
      ),
    );
  }
}
