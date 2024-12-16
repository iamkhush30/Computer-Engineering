import 'package:flutter/material.dart';

import 'V1.dart';
void main()
{
  runApp(demo());
}

class demo extends StatelessWidget {
  const demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyApp1(),
    );
  }
}
