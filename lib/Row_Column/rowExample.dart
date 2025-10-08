import 'package:flutter/material.dart';

class RowExamples extends StatefulWidget {
  final String title;

  const RowExamples({super.key, required this.title});

  @override
  State<RowExamples> createState() => _RowExamples();
}

class _RowExamples extends State<RowExamples> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),

      // body:
      // Container(
      //   width: double.infinity,
      //   height: double.infinity,
      //   child: Padding(
      //     padding: EdgeInsets.all(12),
      //
      //     child: Row(
      //       textBaseline: TextBaseline.ideographic,
      //       // horizontally Alignment set
      //       // mainAxisAlignment: MainAxisAlignment.center,
      //       // vertically where set position
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       spacing: 10,
      //       // mainAxisSize: MainAxisSize.max,
      //       textDirection: TextDirection.ltr,
      //       verticalDirection: VerticalDirection.down,
      //       children: [
      //         Container(
      //           width: 100,
      //           height: 100,
      //           decoration: BoxDecoration(
      //             color: Colors.orange,
      //             borderRadius: BorderRadius.circular(12),
      //           ),
      //           child: Center(child: Text("Box 1")),
      //         ),
      //         Container(
      //           width: 100,
      //           height: 100,
      //           decoration: BoxDecoration(
      //             color: Colors.blue,
      //             borderRadius: BorderRadius.circular(12),
      //           ),
      //           child: Center(child: Text("Box 2")),
      //         ),
      //         Container(
      //           width: 100,
      //           height: 100,
      //           decoration: BoxDecoration(
      //             color: Colors.green,
      //             borderRadius: BorderRadius.circular(12),
      //           ),
      //           child: Center(child: Text("Box 3")),
      //         ),
      //         Container(
      //           width: 100,
      //           height: 100,
      //           decoration: BoxDecoration(
      //             color: Colors.purple,
      //             borderRadius: BorderRadius.circular(12),
      //           ),
      //           child: Center(child: Text("Box 4")),
      //         ),
      //         Container(
      //           width: 100,
      //           height: 100,
      //           decoration: BoxDecoration(
      //             color: Colors.yellow,
      //             borderRadius: BorderRadius.circular(12),
      //           ),
      //           child: Center(child: Text("Box 5")),
      //         ),
      //       ],
      //
      //     ),
      //
      //
      //   ),
      // ),
      drawer: Container(
        width: 300,
        color: Colors.white,
        child: Column(
          children: [
            //Header Section
            Container(
              width: double.infinity,
              color: Colors.orangeAccent,
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  //Profile Image
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/User.jpg"),
                  ),

                  SizedBox(width: 12),

                  // Name & Email
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Bablu Dhakad",
                        style: TextStyle(
                          color: Colors.black26,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "babludhaker328@gmail.com",
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 10),

            // Menu Items
            Expanded(
              child: ListView(
                // shrinkWrap: true,
                children: [
                  ListTile(
                    leading: Icon(Icons.home, color: Colors.blue),
                    title: Text("Home"),
                    onTap: () {
                      print("Home Button clicked");
                      Navigator.of(context).pop();
                    },
                    subtitle: Text("Home button "),
                  ),
                  ListTile(
                    leading: Icon(Icons.person, color: Colors.blue),
                    title: Text("Profile"),
                    onTap: () {
                      print("Profile Button clicked");
                      Navigator.of(context).pop();
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.settings, color: Colors.blue),
                    title: Text("Setting"),
                    onTap: () {
                      print("Settings Button clicked");
                      Navigator.of(context).pop();
                    },
                  ),
                  Divider(),

                  ListTile(
                    leading: Icon(Icons.logout, color: Colors.grey),
                    title: Text("Logout"),
                    onTap: () {
                      print("Logout Button clicked");
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
