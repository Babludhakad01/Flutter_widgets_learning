import 'package:flutter/material.dart';

class InkWellExample extends StatefulWidget {
  final String title;

  const InkWellExample({super.key, required this.title});

  @override
  State<InkWellExample> createState() => _InkWellExample();
}

class _InkWellExample extends State<InkWellExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body:

      // Center(
      //   child: InkWell(
      //     borderRadius: BorderRadius.circular(16), // 🔹 Ripple bhi rounded hoga
      //     onTap: () {
      //       print("Card tapped!");
      //     },
      //     child: Ink(
      //       // 🔹 Ripple dikhane ke liye Ink widget use karo (important)
      //       decoration: BoxDecoration(
      //         color: Colors.blue.shade100,
      //         borderRadius: BorderRadius.circular(16),
      //       ),
      //       child: Container(
      //         width: 200,
      //         height: 120,
      //         padding: EdgeInsets.all(16),
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             Text(
      //               "Flutter Course",
      //               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      //             ),
      //             SizedBox(height: 8),
      //             Text(
      //               "Tap to view details",
      //               style: TextStyle(color: Colors.black54),
      //             ),
      //           ],
      //         ),
      //       ),
      //     ),
      //   ),
      // ),

      InkWell(
        // splashColor: Colors.red,
       // highlightColor: Colors.yellow.withValues(alpha: 0.3),
        radius: 60,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20)),

       // customBorder: CircleBorder(), // iska example
        onTap: (){
          print("On tap clicked");
        },

        child: Center(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),

            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              "Click",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
