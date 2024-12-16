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
        appBar: AppBar(title: Text('p2-2')),
        body: ts(),
      ),
    );
  }
}
Widget ts()
{
  return Text('Hello World',style: TextStyle(fontSize: 30,color: Colors.red),);
}
