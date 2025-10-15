import 'package:flutter/material.dart';

class TextTileExample extends StatefulWidget {
  final String title;

  const TextTileExample({super.key, required this.title});

  @override
  State<TextTileExample> createState() => _TextTileExample();
}

class _TextTileExample extends State<TextTileExample> {
  int? selectedIndex;

  final List<String> names = ["Bablu", "Rahul", "Ram", "Aniket"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView(
        padding: EdgeInsets.all(12),
        children: [
          ListTile(
            leading: Icon(Icons.person, color: Colors.blue),
            title: Text("Bablu Dhakad"),
            subtitle: Text("Flutter Developer"),
            trailing: Icon(Icons.call, color: Colors.green),
            onTap: () {
              print("ListTile tapped");
            },

          ),
          Divider(height: 10),
          ListTile(
            // Usually Icon or Avatar
            leading: Icon(Icons.person),
            // Main content (text or any widget)
            title: Text("kanu Dhakad",),
            // optional smaller text to show
            subtitle: Text("Flutter Developer"),
            // Widget placead at end right of tile(icon , switch, text)
            trailing: Icon(Icons.call, color: Colors.green),
            //Allow 3 lines height (title + subtitle + extra line space).
            isThreeLine: false,

            // vertical padding tile looks compact
            dense: true,
            // visualDensity: VisualDensity(horizontal: 4, vertical: 4),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: BorderSide(color: Colors.grey, width: 1),
            ),
            style: ListTileStyle.drawer,
            // selectedColor: Colors.yellow,
            // selected: true,
            iconColor: Colors.teal,
            // textColor: Colors.blueAccent,

            // custom style for title/ subtitle/ side widget
            titleTextStyle: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),

            contentPadding: EdgeInsets.symmetric(horizontal: 6, vertical: 5),

            onTap: () {
              print("ListTile tapped");
            },

            selected: true,
            tileColor: Colors.red,
            horizontalTitleGap: 15,
           // selectedTileColor: Colors.orange,
          ),
        ],
      )

    );
  }
}

/*

 */
