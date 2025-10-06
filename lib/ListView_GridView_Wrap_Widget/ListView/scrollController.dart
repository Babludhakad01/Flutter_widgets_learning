import 'package:flutter/material.dart';

class ScrollControllerExample extends StatefulWidget {
  final String title;

  const ScrollControllerExample({super.key, required this.title});

  @override
  State<ScrollControllerExample> createState() => _ScrollControllerExample();
}

class _ScrollControllerExample extends State<ScrollControllerExample> {
  //Scroll Controller
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    // jab list trigger ho ya listener trigger ho
    _scrollController.addListener(() {
      print("Scroll Position ${_scrollController.offset}");
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
      ),

      body: ListView.builder(
        controller: _scrollController,
        itemCount: 50,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("Item $index"),
          );
        },
      ),

      floatingActionButton: FloatingActionButton(
           onPressed: () {
        // button dabane pr list bottom tak print kr do
        // _scrollController.jumpTo(15);
        _scrollController.animateTo(_scrollController.position.maxScrollExtent,
            duration: const Duration(seconds: 1), curve: Curves.easeOut);
      },
         child: const Icon(Icons.arrow_downward),
      ),

      /*ListView(

        scrollDirection: Axis.vertical,
        children: [
          Container(
            width: 100,
            height: 100,
            color: Colors.blue,
            child: Center(child: Text("Box 1")),
          ),
          const SizedBox(height: 20),
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
            child: Center(child: Text("Box 2")),
          ),
          const SizedBox(height: 20),
          Container(
            width: 100,
            height: 100,
            color: Colors.green,
            child: Center(child: Text("Box 3")),
          ),
          const SizedBox(height: 20),
          Container(
            width: 100,
            height: 100,
            color: Colors.grey,
            child: Center(child: Text("Box 4")),
          ),
          const SizedBox(height: 20),
          Container(
            width: 100,
            height: 100,
            color: Colors.black,
            child: Center(
              child: Text("Box 5", style: TextStyle(color: Colors.white)),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            width: 100,
            height: 100,
            color: Colors.purple,
            child: Center(child: Text("Box 6")),
          ),
          const SizedBox(height: 20),
          Container(
            width: 100,
            height: 100,
            color: Colors.orange,
            child: Center(child: Text("Box 7")),
          ),
        ],
      ),
       */
    );
  }
}