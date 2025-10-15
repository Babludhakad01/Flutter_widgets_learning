import 'package:flutter/material.dart';

class AlertBarExample extends StatefulWidget {
  final String title;

  const AlertBarExample({super.key, required this.title});

  @override
  State<AlertBarExample> createState() => _AlertBarExample();
}

class _AlertBarExample extends State<AlertBarExample> {
  // Persistent BottomSheet Key
  PersistentBottomSheetController? _persistentController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alert Bar  Demo"),
        backgroundColor: Colors.orange,
      ),
      // GestureDetector for tapping outside persistent sheet to close
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                //step 2 show Dialog function inside OnPressed
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      //Title of the dialog
                      title: Text("Exit App"),
                      //Content of the dialog
                      content: Text("Are your sure you want to exit the app?"),

                      // Step 4 :  Actions(buttons)
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text("No"),
                        ),
                        TextButton(
                          onPressed: () {
                            print("Exit the app ");
                            Navigator.of(context).pop();
                          },
                          child: Text("Yes"),
                        ),
                      ],

                      icon: Icon(Icons.warning, color: Colors.red),

                      actionsAlignment: MainAxisAlignment.spaceBetween,
                      backgroundColor: Colors.teal,
                      surfaceTintColor: Colors.blueAccent,
                      alignment: Alignment.bottomCenter,
                      constraints: BoxConstraints(
                        maxWidth: 500,
                        maxHeight: 300,
                      ),
                    );
                  },
                );
              },
              child: Text("Login"),
            ),

            SizedBox(height: 30),

            // Custom Design for Alert Dialog
            ElevatedButton(
              onPressed: () {
                // Step 1 Show Dialog function
                showDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (context) {
                    //Step 2 Custom Ui Using Row, Column, Container

                    return Dialog(
                      backgroundColor: Colors.transparent,
                      child: Container(
                        width: 300,
                        height: 250,
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.teal[300],
                          borderRadius: BorderRadius.circular(18),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 10,
                              spreadRadius: 2,
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //Icon + title Row
                            Row(
                              children: [
                                Icon(Icons.warning, color: Colors.red),
                                SizedBox(width: 10),

                                Text(
                                  "Exit App",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 14),
                            //Content Text
                            Text("Are you sure you want to exist the app?"),

                            SizedBox(height: 40),

                            //Action Button Row
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              spacing: 10,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text("No"),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text("Yes"),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: Text("Show Custom AlertDialog"),
            ),
          ],
        ),
      ),
    );
  }
}
