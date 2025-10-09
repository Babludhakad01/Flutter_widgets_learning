import 'package:flutter/material.dart';

class GestureDetectorPage extends StatefulWidget {
  final String title;

  const GestureDetectorPage({super.key, required this.title});

  @override
  State<GestureDetectorPage> createState() => _GestureDetectorPage();
}

class _GestureDetectorPage extends State<GestureDetectorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),

      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Column(
            spacing: 10,
            children: [
              //on Tap
              GestureDetector(
                onTap: () {
                  print("On Tap clicked");
                },

                child: Container(
                  // width: 200,
                  height: 100,
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      "On Tap",
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                ),
              ),
              // On Double Tap
              GestureDetector(
                onDoubleTap: () {
                  print("On double taped clicked");
                },

                child: Container(
                  // width: 200,
                  height: 100,
                  color: Colors.orangeAccent,
                  child: Center(
                    child: Text(
                      "On double Tap",
                      style: TextStyle(fontSize: 24, color: Colors.black),
                    ),
                  ),
                ),
              ),

              //On LongPress
              GestureDetector(
                onLongPress: () {
                  print("On long press clicked");
                },

                child: Container(
                  // width: 200,
                  height: 100,
                  color: Colors.purple,
                  child: Center(
                    child: Text(
                      "On long press ",
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                ),
              ),

              //OnTap Down
              GestureDetector(
                onTapDown: (TapDownDetails details) {
                  print("On tap down clicked $details");
                },

                child: Container(
                  // width: 200,
                  height: 100,
                  color: Colors.cyanAccent,
                  child: Center(
                    child: Text(
                      "On TapDown  ",
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                ),
              ),

              //On Tap Up
              GestureDetector(
                onTapUp: (TapUpDetails details) {
                  print("On tap up clicked $details");
                },

                child: Container(
                  // width: 200,
                  height: 100,
                  color: Colors.tealAccent,
                  child: Center(
                    child: Text(
                      "On Tap up  ",
                      style: TextStyle(fontSize: 24, color: Colors.black),
                    ),
                  ),
                ),
              ),

              // on Tap Cancel
              GestureDetector(
                onTapCancel: () {
                  print("On tap Cancel clicked ");
                },

                child: Container(
                  // width: 200,
                  height: 100,
                  color: Colors.orange,
                  child: Center(
                    child: Text(
                      "On Tap Cancel  ",
                      style: TextStyle(fontSize: 24, color: Colors.black),
                    ),
                  ),
                ),
              ),

              // Vertical Drag
              GestureDetector(
                onVerticalDragStart: (details) {
                  print("Vertical Drag Start ${details}");
                },
                onVerticalDragUpdate: (details) {
                  print("Vertical Drag Update ${details}");
                },
                onVerticalDragEnd: (details) {
                  print("Vertical Drag Start ${details}");
                },

                child: Container(
                  // width: 200,
                  height: 100,
                  color: Colors.teal,
                  child: Center(
                    child: Text(
                      "On Vertical Drag (start/update/end)",
                      style: TextStyle(fontSize: 24, color: Colors.black),
                    ),
                  ),
                ),
              ),

              // Horizontal Drag
              GestureDetector(
                onHorizontalDragStart: (details) {
                  print("Horizontal Drag Start ${details}");
                },
                onHorizontalDragUpdate: (details) {
                  print("Horizontal Drag Update ${details}");
                },
                onHorizontalDragEnd: (details) {
                  if (details.primaryVelocity! > 0) {
                    print("Swiped Right");
                  } else {
                    print("Swiped Left");
                  }
                },
                onHorizontalDragCancel: () {
                  print("Horizontal Drag Cancel");
                },
                onHorizontalDragDown: (details) {
                  print("Horizontal Drag Down ${details}");
                },

                child: Container(
                  // width: 200,
                  height: 100,
                  color: Colors.teal,
                  child: Center(
                    child: Text(
                      "On Horizontal Drag (start,update,end, down,cancel)",
                      style: TextStyle(fontSize: 24, color: Colors.black),
                    ),
                  ),
                ),
              ),

              // Pan Gesture (Drag in any direction
              GestureDetector(
                onPanStart: (details) {
                  print("on Pan Started");
                },
                onPanUpdate: (details) {
                  print("on Pan Updated");
                },
                onPanEnd: (details) {
                  print("on Pan End");
                },

                child: Container(
                  // width: 200,
                  height: 100,
                  color: Colors.cyanAccent,
                  child: Center(
                    child: Text(
                      "On Pan (start,update,end)",
                      style: TextStyle(fontSize: 24, color: Colors.black),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
