import 'package:flutter/material.dart';

class PersistentBottomExample extends StatefulWidget {
  final String title;

  const PersistentBottomExample({super.key, required this.title});

  @override
  State<PersistentBottomExample> createState() => _PersistentBottomExample();
}

class _PersistentBottomExample extends State<PersistentBottomExample> {
  // Persistent BottomSheet Key
  PersistentBottomSheetController? _persistentController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BottomSheet Demo"),
        backgroundColor: Colors.orange,
      ),
      // GestureDetector for tapping outside persistent sheet to close
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          // Close persistent sheet if open
          _persistentController?.close();
          _persistentController = null;
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Modal BottomSheet Button
              ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(25),
                      ),
                    ),
                    builder: (context) {
                      return Container(
                        height: 200,
                        color: Colors.lightGreen[100],
                        child: Column(
                          children: const [
                            SizedBox(height: 10),
                            Text(
                              "Modal BottomSheet",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            ListTile(
                              leading: Icon(Icons.share),
                              title: Text("Share"),
                            ),
                            ListTile(
                              leading: Icon(Icons.delete),
                              title: Text("Delete"),
                            ),
                            ListTile(
                              leading: Icon(Icons.edit),
                              title: Text("Edit"),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: const Text("Open Modal BottomSheet"),
              ),
              const SizedBox(height: 30),
              // Persistent BottomSheet Button
              Builder(
                builder: (context) {
                  return ElevatedButton(
                    onPressed: () {
                      _persistentController = Scaffold.of(context)
                          .showBottomSheet((context) {
                            return Container(
                              color: Colors.blueAccent[100],
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: const [
                                    SizedBox(height: 10),
                                    Text(
                                      "Persistent BottomSheet",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    ListTile(
                                      leading: Icon(Icons.edit),
                                      title: Text("Edit"),
                                    ),
                                    ListTile(
                                      leading: Icon(Icons.info),
                                      title: Text("Information"),
                                    ),
                                    ListTile(
                                      leading: Icon(Icons.share),
                                      title: Text("Share Options"),
                                    ),
                                    ListTile(
                                      leading: Icon(Icons.settings),
                                      title: Text("Settings"),
                                    ),
                                    ListTile(
                                      leading: Icon(Icons.logout),
                                      title: Text("Logout"),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          });
                    },
                    child: const Text("Open Persistent BottomSheet"),
                  );
                },
              ),

              const SizedBox(height: 30),


            ],
          ),
        ),
      ),
    );
  }
}
