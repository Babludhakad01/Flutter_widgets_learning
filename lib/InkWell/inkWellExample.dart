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
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // On Tap Example
            InkWell(
              onTap: () {
                print("On  tap Clicked");
              },
              child: Container(
                width: 500,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.red, width: 1),
                ),
                child: Center(
                  child: Text(
                    "On Tap Inkwell",
                    style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            //Double Tap Example
            InkWell(
              onDoubleTap: () {
                print("On double tap Clicked");
              },
              child: Container(
                width: 500,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.red, width: 1),
                ),
                child: Center(
                  child: Text(
                    "On Tap Inkwell",
                    style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),

            // On LongPress
            InkWell(
              onLongPress: () {
                print("On long press Clicked");
              },
              child: Container(
                width: 500,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.red, width: 1),
                ),
                child: Center(
                  child: Text(
                    "On Tap Inkwell",
                    style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            // custom Splash + Rounded inkwell
            InkWell(
              splashColor: Colors.red,

              borderRadius: BorderRadius.circular(12),
              onTap: (){
                print("inkwell splash clicked");
              },
              child: Container(
                width: 500,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.red, width: 1),
                ),
                child: Center(
                  child: Text(
                    "custom Splash +Rounded inkwell",
                    style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
