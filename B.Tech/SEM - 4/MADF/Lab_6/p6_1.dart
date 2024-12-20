import 'package:flutter/material.dart';

class p6_1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(child: Container(color: Colors.red,)),
            Expanded(child: Container(color: Colors.green,)),
            Expanded(child: Container(color: Colors.yellow,)),
          ],
        ),
      ),
    );
  }
}