import 'package:flutter/material.dart';

import './container_widgets/container.dart';
import './container_widgets/text.dart';
import './container_widgets/row_Columns.dart';
import './TextField, TextForm, Form/textField.dart';
import './TextField, TextForm, Form/textFormFiled.dart';
import './TextField, TextForm, Form/LoginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      // home: const ContainerPage(title: 'Flutter Demo Home Page'),
      //  home: const TextPage(title: 'Flutter Text Demo Page'),
     // home: const RowPage(title: "Row Column Practice"),
     //  home: const TextFieldPage(title: "Text Field Page"),
     //  home: FormPage(),
        home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
          ],
        ),
      ),
    );
  }
}
