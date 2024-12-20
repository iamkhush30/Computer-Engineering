import 'package:flutter/material.dart';

class p6_2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
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