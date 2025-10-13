import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:oktoast/oktoast.dart';


class ToastPage extends StatefulWidget {
  final String title;

  const ToastPage({super.key, required this.title});

  @override
  State<ToastPage> createState() => _ToastPage();
}

class _ToastPage extends State<ToastPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title), backgroundColor: Colors.orange),

      body: Visibility(
        visible: true,                  // 👈 show/hide control
        maintainState: false,                 // 👈 keeps state
        maintainAnimation: false,             // 👈 keeps animation running
        maintainSize: false,                 // 👈 remove space
        maintainInteractivity: false,        // 👈 no tap when hidden
        maintainFocusability: false,

        replacement: Text("Nothing to show "), // replacement widget when visible is false
        child: Center(
          child: ElevatedButton(
            onPressed: (){
              // Fluttertoast.showToast(
              //   msg: "Logged in !",
              //   toastLength: Toast.LENGTH_SHORT,
              //   gravity: ToastGravity.CENTER,
              //   timeInSecForIosWeb: 2,
              //   // backgroundColor: Colors.black,
              //   //   webBgColor: LinearGradient(colors: [Colors.blue, Colors.black], begin: AlignmentGeometry.topLeft, end: AlignmentGeometry.bottomRight),// solid background
              //   textColor: Colors.white,         // visible text
              //   fontSize: 18.0,                  // readable size
              //   webPosition: "left"
              // );
        
              // oktoast use
              showToast(
                "Hello from OKToast!",
                duration: Duration(seconds: 12),
                position: ToastPosition.top,
                backgroundColor: Colors.blue,
                 radius: 10.0,
                textStyle: TextStyle(color: Colors.white, fontSize: 18),
              );
        
            },
        
            child: const Text(
              "Show Toast",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
