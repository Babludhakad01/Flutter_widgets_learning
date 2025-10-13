import 'package:flutter/material.dart';

class PageViewExample extends StatefulWidget {
  final String title;

  const PageViewExample({super.key, required this.title});

  @override
  State<PageViewExample> createState() => _PageViewExample();
}

class _PageViewExample extends State<PageViewExample> {
  final Pgcontroller = PageController(initialPage: 1);
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title), backgroundColor: Colors.orange),

      body: Center(

        child: PageView(
          controller: Pgcontroller,
          scrollDirection: Axis.vertical,
          pageSnapping: true, // scroll page ya normal scroll
          onPageChanged: (index){
            print("Page changed $index");
          },


          children: [
            Text("Page 1"),
            Text("Page 2"),
            Text("Page 3"),
            Text("Page 4"),
            Text("Page 5"),
            Text("Page 6"),
            Text("Page 7"),
          ],

        ),
      ),
    );
  }
}
