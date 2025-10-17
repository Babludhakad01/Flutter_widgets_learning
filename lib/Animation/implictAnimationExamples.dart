import 'package:flutter/material.dart';

class ImplicitAnimationExample extends StatefulWidget {
  final String title;

  const ImplicitAnimationExample({super.key, required this.title});

  @override
  State<StatefulWidget> createState() => _ImplicitAnimationExample();
}

class _ImplicitAnimationExample extends State<ImplicitAnimationExample> {
  bool isClick = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title, style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Example 1 :  Animated Container
            /*
            InkWell(
              onTap: () {
                setState(() {
                  isClick = !isClick;
                });
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                curve: Curves.easeOut,
                color: isClick ? Colors.red : Colors.green,
                width: isClick ? 100 : 200,
                height: isClick ? 100 : 200,
                // transform: isClick? Matrix4.tryInvert(): Matrix4Tween.,


              ),
            ),

 */

            // Example 2 : AnimatedCrossFade
            /*
            InkWell(
              onTap: () {
                setState(() {
                  isClick = !isClick;
                });
              },

              child: AnimatedCrossFade(
                firstChild: Container(
                  height: 200,
                  width: 200,
                  color: Colors.red,
                ),
                secondChild: Container(
                  height: 300,
                  width: 300,
                  color: Colors.purple,
                ),
                crossFadeState: isClick? CrossFadeState.showSecond: CrossFadeState.showFirst,
                duration: Duration(milliseconds: 900),
                firstCurve: Curves.easeOut,
                secondCurve: Curves.easeInCirc,
                reverseDuration: Duration(milliseconds: 500),
              ),
            ),

             */

            //  Example 3 : Animated Opacity
            /*
            InkWell(
              onTap: () {
                setState(() {
                  isClick = !isClick;
                });
              },

              child: AnimatedOpacity(
                opacity: isClick ? 0 : 1,
                duration: Duration(milliseconds: 800),
                curve: Curves.linear,
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.tealAccent,
                ),
              ),
            ),

             */

            // Example 4:  Animated Align
            /*
            InkWell(
              onTap: () {
                setState(() {
                  isClick = !isClick;
                });
              },
              child: Container(
                width: 600,
                height: 600,
                color: Colors.grey,
                child: AnimatedAlign(
                  alignment: isClick ? Alignment.topRight : Alignment.bottomLeft,
                  duration: Duration(milliseconds: 900),
                  curve: Curves.decelerate,
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.teal,
                  ),
                ),
              ),
            ),

             */

            //Example 5 :  AnimatedRotation
            /*
            InkWell(
              onTap: () {
                setState(() {
                  isClick = !isClick;
                });
              },

              child: AnimatedRotation(
                turns: isClick ? 400 : 0,
                duration: Duration(minutes: 1),
                child: Container(
                  width: 300,
                  height: 300,
                  color: Colors.cyan,
                ),
              ),
            ),

             */
            // Example 6 : AnimatedScale
            /*
            InkWell(
              onTap: () {
                setState(() {
                  isClick = !isClick;
                });
              },

              child: AnimatedScale(
                curve: Curves.bounceOut,
                scale: isClick ? 2 : 1,
                duration: Duration(milliseconds: 900),
                child: Container(width: 300, height: 300, color: Colors.cyan),
              ),
            ),
                  */

            // Example 7 : AnimatedPositioned
            InkWell(
              onTap: () {
                setState(() {
                  isClick = !isClick;
                });
              },

              child: Container(
                width: 300,
                height: 300,
                color: Colors.grey,

                child: Stack(
                  children: [
                    AnimatedPositioned(
                      curve: Curves.linear,
                      left: isClick ? 0 : 0,
                      top: isClick ? 400 : 0,
                      right: isClick ? 0 : 0,
                      bottom: isClick ? 400 : 0,
                      duration: Duration(milliseconds: 900),
                      child: Container(
                        width: 100,
                        height: 100,
                        color: Colors.cyan,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
