import 'package:flutter/material.dart';

class SnackbarExample extends StatefulWidget {
  final String title;

  const SnackbarExample({super.key, required this.title});

  @override
  State<SnackbarExample> createState() => _SnackbarExample();
}

class _SnackbarExample extends State<SnackbarExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title), backgroundColor: Colors.orange),

      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                onVisible: (){
                  print("On Visible Function are invoked");
                },
                behavior: SnackBarBehavior.floating,
                width: 450,
                hitTestBehavior: HitTestBehavior.translucent,
                content: Row(
                  children: [
                    Icon(Icons.check_circle, color: Colors.white),
                    SizedBox(width: 10),
                    Expanded(child: Text("Item added Successfully")),
                  ],
                ),
               // padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                duration: Duration(seconds: 2),

               // margin: EdgeInsets.all(22),

                backgroundColor: Colors.teal,
                showCloseIcon: true, // for manually close snackbar
                dismissDirection: DismissDirection.horizontal,

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                  side: BorderSide(color: Colors.red, width: 1),
                ),
                action: SnackBarAction(
                  label: "Undo",
                  onPressed: () {
                    print("Undo Clicked");
                  },
                ),
              ),
            );
          },
          child: const Text(
            "Show Snackbar",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
