import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  const GridViewPage({super.key, required title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("GridView all Properties")),
      body:
      // SingleChildScrollView(          // 👈 OUTER SCROLL VIEW
      //   child: Column(
      //     children: [
      //       Container(
      //         height: 200,
      //         color: Colors.orangeAccent,
      //         alignment: Alignment.center,
      //         child: const Text(
      //           "🔶 Outer Scroll Content (Top)",
      //           style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      //         ),
      //       ),
      //
      //       const SizedBox(height: 20),
      //
      //       // 👇 INNER LISTVIEW (ye apna khud scroll karega)
      //       Container(
      //         height: 300, // fixed height di taaki inner list ke andar scroll dikhe
      //         child: ListView.builder(
      //           primary: false, // inner scroll apna controller use karega
      //           physics: const BouncingScrollPhysics(), // inner scroll enable
      //           itemCount: 10,
      //           itemBuilder: (context, index) {
      //             return Container(
      //               height: 80,
      //               margin: const EdgeInsets.all(8),
      //               color: Colors.blue[(index + 1) * 100],
      //               alignment: Alignment.center,
      //               child: Text(
      //                 "Inner List Item ${index + 1}",
      //                 style: const TextStyle(color: Colors.white, fontSize: 20),
      //               ),
      //             );
      //           },
      //         ),
      //       ),
      //
      //       const SizedBox(height: 20),
      //
      //       Container(
      //         height: 200,
      //         color: Colors.greenAccent,
      //         alignment: Alignment.center,
      //         child: const Text(
      //           "🟢 Outer Scroll Content (Bottom)",
      //           style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),

      // SingleChildScrollView(
      //   child: Column(
      //     children: [
      //       const Text("Outer ScrollView (SingleChildScrollView)"),
      //       // 👇 Inner ListView
      //       ListView(
      //         primary: false,
      //         // ❗️important
      //         shrinkWrap: true,
      //         // height ko content ke hisab se shrink karega
      //         physics: const NeverScrollableScrollPhysics(),
      //         // outer scroll handle karega
      //         children: List.generate(
      //           10,
      //           (index) => ListTile(title: Text("Inner Item $index")),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      // Column(
      //   children: [
      //     const Text("Top Text Widget"),
      //     // 👇 Ye ListView Column ke andar hai
      //     Expanded(
      //       child: ListView(
      //         // yaha primary likha nahi, default true hoga
      //         children: List.generate(
      //           20,
      //           (index) => ListTile(title: Text("Item $index")),
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
      GridView(
          primary: false,
          scrollDirection: Axis.vertical,
          // by default
          padding: EdgeInsets.all(12),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 150,
            crossAxisSpacing: 12,
            mainAxisSpacing: 10,
            childAspectRatio: 1

          ),
          /*SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 1 row me kitne column
          mainAxisSpacing: 10, // row ki vertical space
          crossAxisSpacing: 10, // column ki horizontal space
          childAspectRatio: 1, // item ki length or height ka anupaat
        ),
        
         */

          children: [
          Container(width: 100, height: 100, color: Colors.grey),
      Container(width: 100, height: 100, color: Colors.blue),
      Container(width: 100, height: 100, color: Colors.red),
      Container(width: 100, height: 100, color: Colors.orange),
      Container(width: 100, height: 100, color: Colors.purple),
      Container(width: 100, height: 100, color: Colors.deepOrange),
      Container(width: 100, height: 100, color: Colors.black),
      Container(width: 100, height: 100, color: Colors.greenAccent),
      Container(width: 100, height: 100, color: Colors.yellow),
      Container(width: 100, height: 100, color: Colors.deepOrangeAccent),
      Container(width: 100, height: 100, color: Colors.white54),
      Container(width: 100, height: 100, color: Colors.greenAccent),
      ],
    ),);
  }
}
