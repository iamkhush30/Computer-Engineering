import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp3());
}

class MyApp3 extends StatefulWidget
{
  const MyApp3({Key? key}) : super(key: key);

  @override
  State<MyApp3> createState() => _MyApp3State();
}

class _MyApp3State extends State<MyApp3>
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text("p3-1-3")),
          body: Center(
              child: Text("Page 3")
          )
        )
    );
  }
}
