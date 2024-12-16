import 'package:flutter/material.dart';
void main()
{
  runApp(MyApp());
}

class MyApp extends StatefulWidget
{
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('p2-3')),
        body: Padding(
                padding: const EdgeInsets.all(20),
                child: TextField(
                  onSubmitted: (String userinput)
                  {
                    print(userinput);
                  }
                )
              )
        ),
      );
  }
}

