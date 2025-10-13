import 'package:flutter/material.dart';

class NavigationBarExample extends StatefulWidget {
  final String title;

  const NavigationBarExample({super.key, required this.title});

  @override
  State<NavigationBarExample> createState() => _NavigationBarExample();
}

class _NavigationBarExample extends State<NavigationBarExample> {
  //this variable is keep track which tab is selected
  int _selectedIndex = 0;

  // pages to show each tab
  final List<Widget> _pages = [
    Center(child: Text("Home Page")),
    Center(child: Text("Search Page")),
    Center(child: Text("Profile Page")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.orange,
        actions: [
          IconButton(
            onPressed: () {
              print("Search Clicked");
            },
            icon: Icon(Icons.search),
          ),

          IconButton(
            onPressed: () {
              print("Setting Clicked");
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),

      //the body shows the currently selected page based on _selectedIndex
      body: _pages[_selectedIndex],

      bottomNavigationBar: NavigationBar(
        // control which tab selected
        selectedIndex: _selectedIndex,

        onDestinationSelected: (index) {
          // When user taps a tab, this function is called
          setState(() {
            _selectedIndex = index; // Update selected index
          });
        },
        // surfaceTintColor: Colors.grey,
        animationDuration: Duration(milliseconds: 100),
        backgroundColor: Colors.white,
        indicatorColor: Colors.teal,
        indicatorShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),

        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          NavigationDestination(icon: Icon(Icons.search), label: "Search"),
          NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
