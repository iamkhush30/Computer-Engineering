import 'dart:math';
import 'package:flutter/material.dart';

class p8_4 extends StatefulWidget {
  const p8_4({super.key});

  @override
  State<p8_4> createState() => _p8_4State();
}

class _p8_4State extends State<p8_4> {
  int i = 1;
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30,),
            Image.asset("../assets/dice/dice$i.png",height: 100,width: 100,),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: () {
              setState(() {
                i = Random().nextInt(6) + 1;
              });
            }, child: Text("Roll the Dice"))
          ],
        ),
      ),
    );
  }
}
