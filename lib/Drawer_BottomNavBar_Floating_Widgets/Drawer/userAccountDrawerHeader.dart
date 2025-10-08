import 'package:flutter/material.dart';

class UserAccountDrawerExample extends StatefulWidget {
  final String title;

  const UserAccountDrawerExample({super.key, required this.title});

  @override
  State<UserAccountDrawerExample> createState() => _UserAccountDrawerExample();
}

class _UserAccountDrawerExample extends State<UserAccountDrawerExample> {
  bool showOtherAccount = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          // Heading
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Bablu Dhakad"),
              accountEmail: Text("babludhaker328@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/User.jpg"),
              ),
              onDetailsPressed: () {
                setState(() {
                  showOtherAccount = !showOtherAccount;
                });
              },

              margin: EdgeInsets.zero,
              decoration: BoxDecoration(
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
    );
  }
}
