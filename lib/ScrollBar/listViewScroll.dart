import 'package:flutter/material.dart';

class ListViewScrollBarPage extends StatefulWidget {
  final String title;

  const ListViewScrollBarPage({super.key, required this.title});

  @override
  State<ListViewScrollBarPage> createState() => _ListViewScrollBarPage();
}

class _ListViewScrollBarPage extends State<ListViewScrollBarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),

      body: CustomScrollView(
        slivers: [
          // 1️⃣ SliverAppBar
          SliverAppBar(
            pinned: true, // AppBar top par fix rahega scroll ke time
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Custom ScrollView'),
              background: Image.asset(
                'assets/images/nature.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),

          // 2️⃣ SliverList
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(title: Text('List Item #$index')),
              childCount: 10,
            ),
          ),
        ],
      ),

      // GridView.count(
      //   scrollDirection: Axis.horizontal,
      //   crossAxisCount: 2, // 2 columns
      //   children: List.generate(10, (index) {
      //     return Container(
      //       margin: EdgeInsets.all(8),
      //       color: Colors.teal[100 * ((index % 8) + 1)],
      //       child: Center(child: Text('Item $index')),
      //     );
      //   }),
      // ),

      // ListView.separated(
      //   // scrollDirection: Axis.horizontal,
      //   itemCount: 20,
      //   itemBuilder: (context, index) {
      //     return ListTile(
      //       leading: Icon(Icons.person),
      //       title: Text("Person $index"),
      //       subtitle: Text("Msg $index"),
      //     );
      //   },
      //
      //   separatorBuilder: (BuildContext context, index) {
      //     return Divider(color: Colors.grey,indent: 18, endIndent: 18, height: 8, );
      //   },
      // ),
    );
  }
}
