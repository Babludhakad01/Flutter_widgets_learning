import 'package:flutter/material.dart';

class CustomNavigationExample extends StatefulWidget {
  final String title;

  const CustomNavigationExample({super.key, required this.title});

  @override
  State<CustomNavigationExample> createState() => _CustomNavigationExample();
}

class _CustomNavigationExample extends State<CustomNavigationExample> {
  int _SelectedIndex = 0;

  final List<Widget> _screen = [
    Center(child: Text("Home Page"),),
    Center(child: Text("Search Page"),),
    Center(child: Text("Profile Page"),),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),

      body: _screen[_SelectedIndex] ,

      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.blue,

        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // Home
            buildNavItem(Icons.home, "Home", 0),
            // Search
            buildNavItem(Icons.search, "Search", 1),
            // Profile
            buildNavItem(Icons.person, "Profile", 2),
          ],
        ),
      ),
    );
  }

  buildNavItem(IconData icon , String label, int index) {
    final bool isSelected = _SelectedIndex== index;

    return GestureDetector(
      onTap: (){
        setState(() {
          _SelectedIndex = index;
        });
      },
      child: Column(
         mainAxisSize: MainAxisSize.max,
         mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon,color: isSelected ? Colors.white : Colors.white70,),
          Text(
            label,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.white70,
              fontSize: 12,

            ),
          )
        ],

      ),
    );
  }


}
