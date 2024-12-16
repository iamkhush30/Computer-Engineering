import 'package:flutter/material.dart';

class MyApp2 extends StatelessWidget
{
  final String name,email,phone;
  MyApp2({super.key,required this.name,required this.email,required this.phone});
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Second Screen'),),
        body: Center(
          child: Column(
            children: [
              Text("Your Name Is= ${name}"),
              Text("Your Email Is= ${email}"),
              Text("Your Phone Number Is= ${phone}"),
            ],
          ),
        ),
      ),
    );
  }
}
