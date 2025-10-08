import 'dart:io';

import 'package:flutter/material.dart';

class FileImageExample extends StatefulWidget {
  final String title;

  const FileImageExample({super.key, required this.title});

  @override
  State<FileImageExample> createState() => _FileImageExample();
}

class _FileImageExample extends State<FileImageExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),

      body: Center(
        child: Image.file(
          File('C:/Users/dell/Downloads/ScreenShots')
        ),
      ),
    );
  }
}
