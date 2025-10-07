import 'package:flutter/material.dart';

class DrawerExample extends StatefulWidget {
  final String title;

  const DrawerExample({super.key, required this.title});

  @override
  State<DrawerExample> createState() => _DrawerExample();
}

class _DrawerExample extends State<DrawerExample> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool inStock = false;
  double price = 1000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        actions: [
          IconButton(
            onPressed: () {
              _scaffoldKey.currentState!.openEndDrawer();
            },
            icon: Icon(Icons.menu_open),
          ),
        ],
      ),
      // Create a drawer

      //LeftSide Drawer
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          // Heading
          children: [
            DrawerHeader(
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(
                // Solid Color Background
                // gradient: LinearGradient(
                //     colors: [Colors.black26, Colors.blue]
                // ),
                color: Colors.blue[400],

                border: Border(
                  bottom: BorderSide(color: Colors.white, width: 1),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ],
              ),

              // Header Content
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/User.jpg'),
                  ),

                  SizedBox(height: 10),
                  Text(
                    "Bablu Dhakad",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            // Body of Drawer
            ListTile(
              leading: Icon(Icons.home, color: Colors.blue),
              title: Text("Home"),
              onTap: () {
                Navigator.pop(context);
                print("On tap Home");
              },
            ),

            ListTile(
              leading: Icon(Icons.person, color: Colors.green),
              title: Text("Profile"),
              onTap: () {
                Navigator.pop(context);
                print("On tap Profile");
              },
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.grey),
              title: Text("Settings"),
              onTap: () {
                Navigator.pop(context);
                print("On tap Home");
              },
            ),

            Divider(),
            ListTile(
              leading: Icon(Icons.logout, color: Colors.red),
              title: Text("Logout"),
              onTap: () {
                Navigator.pop(context);
                print("On Tap Logout");
              },
            ),
          ],
        ),
      ),

      //Right Side Drawer
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(16),
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Filter Product",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              //Stock Filter
            ),
            SwitchListTile(
              title: const Text("Show Only in Stock Items"),
              value: inStock,
              onChanged: (value) {
                setState(() {
                  inStock = value;
                });
              },
            ),
            const SizedBox(height: 10),
            //Price Filter
            const Text(
              "Max Price",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Slider(
              value: price,
              min: 100,
              max: 5000,
              divisions: 50,
              label: "${price.round()}",
              onChanged: (value) {
                setState(() {
                  price = value;
                });
              },
            ),
            const SizedBox(height: 20),

            // Apply Button
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      "Filters applied: InStock = $inStock | Price < ₹${price!.round()}",
                    ),
                  ),
                );
              },
              child: Text("Apply"),
            ),
          ],
        ),
      ),

      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Scaffold.of(context).openDrawer();
            _scaffoldKey.currentState!.openDrawer();
          },
          child: Text(
            "Open to Draw",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
