import 'package:flutter/material.dart';
import 'package:p_one_one/p-2-6-2.dart';

void main() {
  runApp(MyApp1());
}

class MyApp1 extends StatefulWidget {
  @override
  State<MyApp1> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('p2-6-1')),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) {
                  return MyApp2();
                },)
              );
            },
            child: Text(
              'Next Page',
            ),
          ),
        ),
      ),
    );
  }
}
