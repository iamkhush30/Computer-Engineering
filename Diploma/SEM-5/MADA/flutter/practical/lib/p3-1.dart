import 'package:flutter/material.dart';
import 'package:untitled/p3-1-1.dart';
import 'package:untitled/p3-1-2.dart';
import 'package:untitled/p3-1-3.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatefulWidget
{
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{
  int si = 0;
  List<Widget> p = [  MyApp1(), MyApp2(), MyApp3()  ];
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
        home: Scaffold(
          body: p[si],
          bottomNavigationBar: BottomNavigationBar(
            onTap: ( int value )
            { setState(() {
              si = value;
            }); },
            currentIndex: si,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.movie_creation_outlined),label: "Reel"),
              BottomNavigationBarItem(icon: Icon(Icons.person_3_outlined),label: "Profile")
            ],
          ),
        )
    );
  }
}
