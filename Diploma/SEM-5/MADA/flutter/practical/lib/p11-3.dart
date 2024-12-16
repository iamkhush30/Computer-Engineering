import 'package:flutter/material.dart';
import 'package:gaurav/main.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> screens = [
    Center(child: Text('Home'),),
    Center(child: Text('About us'),),
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Drawer Demo'),
        ),
        body: screens[index],
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                selected: index == 0,
                title: Text('Home'),
                onTap: () {
                  setState(() {
                    index = 0;
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                selected: index == 1,
                title: Text('About us'),
                onTap: () {
                  setState(() {
                    index = 1;
                  });
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}