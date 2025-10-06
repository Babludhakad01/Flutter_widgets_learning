import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  final String title;

  const ListViewPage({super.key, required this.title});

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),

      body: ListView(
        // hr item ki fixed height set krta hai or lagegi to padding nhi apply hogi
        // itemExtent: 50,
        padding: EdgeInsets.all(12),

        shrinkWrap: true,
        // Shrink krta hai width
        controller: _scrollController,
        // Scroll User
        physics: ClampingScrollPhysics(),

        scrollDirection: Axis.vertical,

        // by default vertical
        // reverse: true, // reverse list
        children: [
          Card(
            elevation: 5,
            color: Colors.blue[100],
            child: SizedBox(
              height: 100,
              child: Center(
                child: Text(
                  "Card 1",
                  style: const TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
            ),
          ),
          // Card 2
          Card(
            elevation: 5,
            color: Colors.green[100],
            child: SizedBox(
              height: 100,
              child: Center(
                child: Text(
                  "Card 2",
                  style: const TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
            ),
          ),
          // Card 3
          Card(
            elevation: 5,
            color: Colors.orange[100],
            child: SizedBox(
              height: 100,
              child: Center(
                child: Text(
                  "Card 3",
                  style: const TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
            ),
          ),
          //card 4
          Card(
            elevation: 5,
            color: Colors.blue[100],
            child: SizedBox(
              height: 100,
              child: Center(
                child: Text(
                  "Card 4",
                  style: const TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
            ),
          ),
          //Card 5
          Card(
            elevation: 5,
            color: Colors.yellow[100],
            child: SizedBox(
              height: 100,
              child: Center(
                child: Text(
                  "Card 5",
                  style: const TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
            ),
          ),
          Card(
            elevation: 5,
            color: Colors.red[100],
            child: SizedBox(
              height: 100,
              child: Center(
                child: Text(
                  "Card 6",
                  style: const TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
            ),
          ),
        ],
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
