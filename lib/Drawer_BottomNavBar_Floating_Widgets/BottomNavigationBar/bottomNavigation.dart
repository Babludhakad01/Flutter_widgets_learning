import 'package:flutter/material.dart';

class BottomNavbarExample extends StatefulWidget {
  final String title;

  const BottomNavbarExample({super.key, required this.title});

  @override
  State<BottomNavbarExample> createState() => _BottomNavbarExample();
}

class _BottomNavbarExample extends State<BottomNavbarExample> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _currentIndex = 0;
  final List<Widget> _screen = [
    Center(child: Text("Home Screen")),
    Center(child: Text("Search Screen")),
    Center(child: Text("Profile Screen")),
    Center(child: Text("Setting Screen")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: _screen[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        // keep it clear
         selectedItemColor: Colors.deepPurple,
        //  selected Item Color
         unselectedItemColor: Colors.grey,
        // UnSelected Color
        //fixedColor: Colors.black,
      //  selectedIconTheme: IconThemeData(size: 35, color: Colors.amber),
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),

        backgroundColor: Colors.blue,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile"),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
