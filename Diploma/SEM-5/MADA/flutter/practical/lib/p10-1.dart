import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  List<int> n = [1,2,3,4,5,6,7,8,9,10];

  @override
  Widget build(BuildContext context)
  {
    return  MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text("p4-1")),
          body: ListView(
            children: n.map((num) => Text('$num')).toList(),
          ),
        )
    );
  }
}
