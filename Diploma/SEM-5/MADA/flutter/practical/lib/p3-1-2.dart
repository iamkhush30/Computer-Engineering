import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp2());
}

class MyApp2 extends StatefulWidget
{
  const MyApp2({Key? key}) : super(key: key);

  @override
  State<MyApp2> createState() => _MyApp2State();
}

class _MyApp2State extends State<MyApp2>
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text("p3-1-2")),
          body: Center(
            child: Text("Page 2")
          )
        )
    );
  }
}
