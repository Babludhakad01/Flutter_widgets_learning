import 'package:flutter/material.dart';

class ContainerPage extends StatefulWidget {
  const ContainerPage({super.key, required this.title});

  final String title;

  @override
  State<ContainerPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ContainerPage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          //Size
          width: 250,
          height: 250,

          //Margin (Outer Space)
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(15),

          // alignment: Alignment.bottomRight,

          // color: Colors.yellow,
          decoration: BoxDecoration(
            color: Colors.orangeAccent,
            border: Border.all(color: Colors.red, width: 3),
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              colors: [Colors.orange, Colors.deepOrange, Colors.deepPurple],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 7,
                offset: Offset(-5, 5),
              ),
            ],
          ),

          foregroundDecoration: BoxDecoration(
            border: Border.all(color: Colors.blue, width: 3),
            borderRadius: BorderRadius.circular(20),
          ),

          //Constraints
          constraints: BoxConstraints(
            minWidth: 150,
            maxWidth: 300,
            minHeight: 150,
            maxHeight: 300,
          ),

          // 9. Transform
          transform: Matrix4.rotationZ(0.1),

          // 10. Transform Alignment
          transformAlignment: Alignment.center,

          //  Clip behavior
           clipBehavior: Clip.hardEdge,

          // Child widget
          child: Text(
            'Full Container',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
