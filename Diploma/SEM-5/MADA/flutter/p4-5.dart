import 'dart:math';

import 'package:flutter/material.dart';


class MyApp extends StatefulWidget
{
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{
  int i = 1;
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("p4-5")),
        body: Center(
          child: Column(
            children: [
              Image.asset("assets/img/dice$i.png"),
              ElevatedButton(onPressed: () {
                setState(() {
                  i = Random().nextInt(6) + 1;
                });
              }, child: Text("Roll the Dice"))
            ],
          ),
        ),
      ),
    );
  }
}
