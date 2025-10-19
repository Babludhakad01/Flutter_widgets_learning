import 'package:flutter/material.dart';

class PopupMenuPage extends StatefulWidget {
  final String title;

  const PopupMenuPage({super.key, required this.title});

  @override
  State<StatefulWidget> createState() => _PopupMenuPage();
}

class _PopupMenuPage extends State<PopupMenuPage> {
  String selectedOption = "None";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title, style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.red,
        actions: [
          PopupMenuButton<String>(
            initialValue: selectedOption,
            tooltip: "More Options",
            elevation: 8,
            shadowColor: Colors.blue,
            splashRadius: 20,
            icon: Icon(Icons.more_vert),
            iconColor: Colors.orangeAccent,
            enableFeedback: true,
            popUpAnimationStyle: AnimationStyle(
              curve: Curves.bounceOut,
              duration: Duration(milliseconds: 300),
            ),
            position: PopupMenuPosition.over,

            iconSize: 30,
            offset: Offset(0, 40),
            color: Colors.teal,

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side: BorderSide(color: Colors.grey),
            ),

            // enabled: ,
            borderRadius: BorderRadius.only(topRight: Radius.circular(12)),
            onSelected: (value) {
              setState(() {
                selectedOption = value;
              });
            },

            onOpened: () {
              print("Menu opened");
            },

            onCanceled: () {
              print("On Cancel menu ");
            },

            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  value: "Edit",
                  child: Row(
                    children: [
                      Icon(Icons.edit, color: Colors.blue),
                      SizedBox(width: 10),
                      Text("Edit"),
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: "Delete",
                  child: Row(
                    children: [
                      Icon(Icons.delete, color: Colors.red),
                      SizedBox(width: 10),
                      Text("Delete"),
                    ],
                  ),
                ),

                PopupMenuItem(
                  value: "Share",
                  child: Row(
                    children: [
                      Icon(Icons.share, color: Colors.green),
                      SizedBox(width: 10),
                      Text("Share"),
                    ],
                  ),
                ),
              ];
            },
          ),
        ],
      ),

      body: Center(
        child: Text(
          "Selected Option $selectedOption",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
