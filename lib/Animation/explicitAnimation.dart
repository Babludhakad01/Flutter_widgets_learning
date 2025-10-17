import 'package:flutter/material.dart';

class ExplicitAnimationPage extends StatefulWidget {
  final String title;

  const ExplicitAnimationPage({super.key, required this.title});

  @override
  State<StatefulWidget> createState() => _ExplicitAnimationPage();
}

class _ExplicitAnimationPage extends State<ExplicitAnimationPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    //Controller: Duration 2 Sec
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 3000),
    );

    // Tween 0 se 300 tak width animate karana
    _animation = Tween<double>(begin: 0.5, end: 1.5).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );

    // start the animation
    _animationController.repeat(reverse: true);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title, style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _animationController,
          builder: (context, child) {
            return Transform.rotate(
              angle: _animationController.value * 2 * 3.1416,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(height: 300, width: 300, color: Colors.blue),
                  Transform.scale(
                    scale: _animation.value,
                    child: Container(
                      height: 150,
                      width: 150,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
