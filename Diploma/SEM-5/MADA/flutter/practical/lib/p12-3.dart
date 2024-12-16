import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatefulWidget
{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{
  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title: Text("P13-3"),),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(50),
              child: TextField(controller: _username,),
            ),

          ],
        ),
      ),
    );
  }
}

