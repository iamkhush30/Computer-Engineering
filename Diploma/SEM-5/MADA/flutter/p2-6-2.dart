import 'package:flutter/material.dart';

class MyApp2 extends StatefulWidget {
  @override
  State<MyApp2> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('p2-6-2')),
        body: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Previous Page'),
        ),
      ),
    );
  }
}
