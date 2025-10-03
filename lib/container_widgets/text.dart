import 'package:flutter/material.dart';

class TextPage extends StatefulWidget {
  const TextPage({super.key, required this.title});

  final String title;

  @override
  State<TextPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<TextPage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Column(
        children: [
          // Container(
          //   width: 100,
          //   height: 100,
          //   color: Colors.blue,
          //   child: Text(
          //     "Hello bablu dhakad",
          //     // maxLines: 1,
          //     // overflow: TextOverflow.ellipsis,
          //     textAlign: TextAlign.justify,
          //
          //     style: TextStyle(
          //       // letterSpacing: 2,
          //       // shadows: [
          //       // Shadow(color: Colors.black12, offset: Offset(2, 2), blurRadius: 2),
          //       // ],
          //       color: Colors.white,
          //
          //
          //       fontSize: 24,
          //       fontWeight: FontWeight.bold,
          //     ),
          //   ),
          // ),
          Card(
            // shadowColor: Colors.red,
            surfaceTintColor: Colors.blue,
            margin: EdgeInsets.all(12),
            clipBehavior: Clip.antiAlias,

            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              side: BorderSide(color: Colors.blue, width: 2)
            ),
            borderOnForeground: false,

            child: Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                "This is a Simple Card - Bablu dhakad",
                style: TextStyle(fontSize: 18, color: Colors.black, fontWeight:FontWeight.w700),
              ),
            ),
          ),
          Card(
            color: Colors.white,
            shadowColor: Colors.grey,
            surfaceTintColor: Colors.blue,
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side: BorderSide(color: Colors.blue, width: 2),
            ),
            borderOnForeground: true,
            margin: EdgeInsets.all(20),
            clipBehavior: Clip.hardEdge,
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                "Final Card with All Properties",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          )

        ],
      ),
    );
  }
}
