import 'package:flutter/material.dart';

class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(home: MyApp1());
  }
}

class MyApp1 extends StatefulWidget
{
  const MyApp1({super.key});

  @override
  State<MyApp1> createState() => _MyApp1State();
}

class _MyApp1State extends State<MyApp1>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title: Text('DB-1'),),
      body: Row(
        children: [
          ElevatedButton(onPressed: (){}, child: Text("Add User")),
          SizedBox(width: 20,),
          ElevatedButton(onPressed: (){}, child: Text("View User")),
        ],
      ),
    );
  }
}
