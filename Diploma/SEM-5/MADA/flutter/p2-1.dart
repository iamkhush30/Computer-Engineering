import 'package:flutter/material.dart';
void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('p2-1')),
        body: Text('Hello World',style: TextStyle(fontSize: 30,color: Colors.red),),
      ),
    );
  }
}
