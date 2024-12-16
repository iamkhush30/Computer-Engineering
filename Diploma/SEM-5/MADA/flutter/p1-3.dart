import 'package:flutter/material.dart';
void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
              title: Text('vertical Part')
          ),
          body: Row(
                  children: [
                    Expanded(
                    child : Column(
                              children: [
                                Expanded(child: Container(color: Colors.grey,)),
                                Expanded(child: Container(color: Colors.yellow,)),
                                Expanded(child: Container(color: Colors.greenAccent,))
                              ],
                            ),
                    ),
                    Expanded(
                        child : Column(
                          children: [
                            Expanded(child: Container(color: Colors.red,),flex: 2),
                            Expanded(child: Container(color: Colors.green,),flex: 2),
                            Expanded(child: Container(color: Colors.white,))
                          ],
                        )
                    ),
                    Expanded(
                        child : Column(
                          children: [
                            Expanded(child: Container(color: Colors.redAccent,)),
                            Expanded(child: Container(color: Colors.yellow,),flex: 3),
                            Expanded(child: Container(color: Colors.purple,),flex: 2)
                          ],
                        )
                    ),
                ]
    )
    )
    );
  }
}