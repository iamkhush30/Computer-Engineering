import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp1());
}

class MyApp1 extends StatefulWidget
{
  const MyApp1({Key? key}) : super(key: key);

  @override
  State<MyApp1> createState() => _MyApp1State();
}

class _MyApp1State extends State<MyApp1>
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("p3-1-1")),
        body: Center(
        child: Text("Page 1"),
        )
        ),
      );
  }
}
