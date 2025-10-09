import 'package:flutter/material.dart';

class TimeStampExample extends StatefulWidget {
  final String title;

 const TimeStampExample({super.key, required this.title});

  @override
  State<TimeStampExample> createState() => _TimeStampExample();
}

class _TimeStampExample extends State<TimeStampExample> {
  late Stream<String> _timeStream;

  @override
  void initState() {
    super.initState();

    // Stream Periodic // Har 1 Second me new Data send krega
    _timeStream = Stream.periodic(Duration(seconds: 1), (count) {
      // har tick me current time return karega
      final currentTime = DateTime.now();
      return "${currentTime.hour} : ${currentTime.minute} : ${currentTime.second}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: StreamBuilder<String>(
          stream: _timeStream,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Text("Loading time..");
            }

            if (snapshot.hasError) {
              return Text("Error ${snapshot.error}");
            }

            if (!snapshot.hasData) {
              return Text("no data yet");
            }

            return Text(
              "Current Time:  ${snapshot.data}",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            );
          },
        ),
      ),
    );
  }
}
