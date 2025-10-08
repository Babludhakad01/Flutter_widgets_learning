import 'package:flutter/material.dart';

class BoxDemoPage extends StatefulWidget {
  final String title;

  const BoxDemoPage({super.key, required this.title});

  @override
  State<BoxDemoPage> createState() => _BoxDemoPage();
}

class _BoxDemoPage extends State<BoxDemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),

      body: Center(
        child: Container(
          width: 300,
          height: 300,
          child: Stack(
            children: [
              //top
              Align(
                alignment: Alignment.topCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: List.generate(4, (index) {
                    return Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        border: Border.all(color: Colors.grey, width: 1),
                      ),
                    );
                  }),
                ),
              ),
              //left
              Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: List.generate(4, (index) {
                    return Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        border: Border.all(color: Colors.grey, width: 1),
                      ),
                    );
                  }),
                ),
              ),
              //bottom
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  children: List.generate(4, (index) {
                    return Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        border: Border.all(color: Colors.grey, width: 1),
                      ),
                    );
                  }),
                ),
              ),
              //right
              Align(
                alignment: Alignment.centerRight,
                child: Column(
                  children: List.generate(4, (index) {
                    return Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        border: Border.all(color: Colors.grey, width: 1),
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
