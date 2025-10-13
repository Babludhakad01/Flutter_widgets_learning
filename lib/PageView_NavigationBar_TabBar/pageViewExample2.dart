import 'package:flutter/material.dart';

class PageViewExample2 extends StatefulWidget {
  final String title;

  const PageViewExample2({super.key, required this.title});

  @override
  State<PageViewExample2> createState() => _PageViewExample2();
}

class _PageViewExample2 extends State<PageViewExample2> {
  final Pgcontroller = PageController(initialPage: 1);
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title), backgroundColor: Colors.orange),

      body: PageView.builder(
        controller: Pgcontroller,

        itemCount: 5, // total 5 pages
        onPageChanged: (index) => print('Current page: $index'),
        itemBuilder: (context, index) {
          return Container(
            color: Colors.primaries[index % Colors.primaries.length],
            child: Center(
              child: Text(
                'Page ${index + 1}',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
          );
        },
      ),
      // Column(
      //   children: [
      //     Expanded(
      //       child: PageView(
      //         controller: Pgcontroller,
      //         onPageChanged: (index) => setState(() {
      //           _currentPage = index;
      //         }),
      //         children: [
      //           Text("Page 1", style: TextStyle(fontSize: 20)),
      //           Text("Page 2", style: TextStyle(fontSize: 20)),
      //           Text("Page 3", style: TextStyle(fontSize: 20)),
      //           Text("Page 4", style: TextStyle(fontSize: 20)),
      //           Text("Page 5", style: TextStyle(fontSize: 20)),
      //         ],
      //       ),
      //     ),
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceAround,
      //       children: [
      //         ElevatedButton(
      //           onPressed: () {
      //             Pgcontroller.previousPage(
      //               duration: Duration(milliseconds: 300),
      //               curve: Curves.easeInOut,
      //             );
      //           },
      //           child: Text("Prev"),
      //         ),
      //         SizedBox(width: 10),
      //         ElevatedButton(
      //           onPressed: () {
      //             Pgcontroller.nextPage(
      //               duration: Duration(milliseconds: 300),
      //               curve: Curves.bounceIn,
      //             );
      //           },
      //           child: Text("Next"),
      //         ),
      //       ],
      //     ),
      //   ],
      // ),
    );
  }
}


/*
PageView(
  key: key, // Widget ka unique identity assign karta hai (optional)

  scrollDirection: Axis.horizontal, // Swipe direction: horizontal (default) ya vertical

  reverse: false, // true karne se page order ulta ho jata hai (last → first)

  controller: PageController(), // Page control karne ke liye (jump, animate, current page check)

  physics: BouncingScrollPhysics(), // Scroll ka behavior define karta hai (bounce, clamp, disable, etc.)

  pageSnapping: true, // true = pages snap ho jate hain full screen par; false = free scroll (like list)

  onPageChanged: (index) {
    // Jab page change hota hai to ye callback call hoti hai
    print("Now on page: $index");
  },

  children: const <Widget>[
    // Ye list of widgets hain jo har page represent karte hain
    Center(child: Text("Page 1")),
    Center(child: Text("Page 2")),
    Center(child: Text("Page 3")),
  ],

  dragStartBehavior: DragStartBehavior.start,
  // Ye batata hai drag gesture kab start hoga — default 'start' hi rakho

  allowImplicitScrolling: true,
  // True karne par nearby pages preload hote hain for smooth scrolling

  restorationId: 'page_view_1',
  // App restart hone par ye property page position restore karne me help karti hai

  clipBehavior: Clip.hardEdge,
  // Overflow hone par content clip hota hai — Clip.none se overflow allow kar sakte ho

  hitTestBehavior: HitTestBehavior.opaque,
  // Gesture detection ka area define karta hai (opaque = full area responsive)

  scrollBehavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
  // Scroll ka overall behavior define karta hai (glow, scrollbar disable, etc.)

  padEnds: true,
  // True hone par start aur end me thoda padding add hoti hai; false = pages start/end se chipke honge
)

 */