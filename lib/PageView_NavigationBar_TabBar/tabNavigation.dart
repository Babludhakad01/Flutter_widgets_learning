import 'package:flutter/material.dart';

class TabNavigationExample extends StatefulWidget {
  final String title;

  const TabNavigationExample({super.key, required this.title});

  @override
  State<TabNavigationExample> createState() => _TabNavigationExample();
}

class _TabNavigationExample extends State<TabNavigationExample> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          backgroundColor: Colors.orange,
          bottom: TabBar(
            // isScrollable: true,
            padding: EdgeInsets.all(12),
            //indicatorColor: Colors.teal, // indicator color of selected tab
            automaticIndicatorColorAdjustment: true,
            indicatorSize: TabBarIndicatorSize.label,
            dividerColor: Colors.grey,
            unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),

            tabs: [
              Tab(icon: Icon(Icons.home), text: "Home"),
              Tab(icon: Icon(Icons.search), text: "search"),

              Tab(icon: Icon(Icons.person), text: "profile"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text("Home Page")),
            Center(child: Text("Search Page")),
            Center(child: Text("Profile Page")),
          ],
        ),
      ),
    );
  }
}
