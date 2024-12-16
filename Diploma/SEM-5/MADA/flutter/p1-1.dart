import 'package:flutter/material.dart';
void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('horizontal Part')
        ),
        body: Row(
          children: [
            Expanded(child: Container(color: Colors.cyan,)),
            Expanded(child: Container(color: Colors.yellow,)),
            Expanded(child: Container(color: Colors.cyan,))
          ],
        ),
      )
    );
  }
}