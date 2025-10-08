import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyStatelessPage extends StatelessWidget{
  const MyStatelessPage({Key? key}) : super(key: key);
  
 @override
  Widget build(BuildContext context) {
   print("build() called");
   
   return Scaffold(
     appBar: AppBar(
       title: Text(
         "Stateless Lifecyle",
       ),
     ),
     body: Center(
       child: Text("Hello Flutter !"),
     ),
   );
    
  }
}