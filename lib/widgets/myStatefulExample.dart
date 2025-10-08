import 'package:flutter/material.dart';

class MyStatefulExample extends StatefulWidget {
  const MyStatefulExample({Key? key}) : super(key: key);

  @override
  _MyStatefulExampleState createState() {
    print("1️⃣ createState()");
    return _MyStatefulExampleState();
  }
}

class _MyStatefulExampleState extends State<MyStatefulExample> {
  int counter = 0;

  @override
  void initState() {
    super.initState();
    print("2️⃣ initState()");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("3️⃣ didChangeDependencies()");
  }

  @override
  Widget build(BuildContext context) {
    print("4️⃣ build()");
    return Scaffold(
      appBar: AppBar(title: Text("Stateful Lifecycle")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Count: $counter", style: TextStyle(fontSize: 25)),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  counter++;
                });
              },
              child: Text("Increase"),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void deactivate() {
    super.deactivate();
    print("6️⃣ deactivate()");
  }

  @override
  void dispose() {
    print("7️⃣ dispose()");
    super.dispose();
  }
}
