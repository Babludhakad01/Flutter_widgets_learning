import 'package:flutter/material.dart';

class BottomSheetPage extends StatefulWidget {
  final String title;

  const BottomSheetPage({super.key, required this.title});

  @override
  State<BottomSheetPage> createState() => _BottomSheetPage();
}

class _BottomSheetPage extends State<BottomSheetPage> {
  // Persistent BottomSheet Key
  PersistentBottomSheetController? _persistentController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),

      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          _persistentController?.close();
          _persistentController = null;
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // button for modal BottomSheet
              ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(

                    backgroundColor: Colors.teal,
                    barrierLabel: "Hello",

                    barrierColor: Colors.black.withValues(alpha: 0.5),
                    elevation: 2,
                    // for full screen or size of content
                    isScrollControlled: true,

                    //Tap outside se sheet close ho skti hai ya nhi
                    isDismissible: true,
                    // User sheet ko swipe down krke close kr skta hai ya nhi
                    enableDrag: true,

                    showDragHandle: true,


                    //Kya hai: Sheet notch/status bar ya bottom nav ke upar overlap na kare.
                    useSafeArea: true,

                    context: context,
                    builder: (context) {
                      return Container(
                        height: 200,
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Text(
                              "Modal BottomSheet",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 20),
                            ListTile(
                              leading: Icon(Icons.share),
                              title: Text("Share"),
                              onTap: () {
                                print("Clicked by Share button");
                              },
                            ),
                            ListTile(
                              leading: Icon(Icons.delete),
                              title: Text("Delete"),
                              onTap: () {
                                print("Clicked by Delete button");
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(22),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: Text("Open bottom Modal"),
              ),

              const SizedBox(height: 30),


            ],
          ),
        ),
      ),
    );
  }
}
