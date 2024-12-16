import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  List<String> img = ['assets/img/1.jpg','assets/img/2.jpg','assets/img/3.jpg',
                    'assets/img/4.jpg','assets/img/5.jpg','assets/img/6.jpg'];

  @override
  Widget build(BuildContext context)
  {
    return  MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text("p4-3")),
          body: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 2,
              mainAxisSpacing: 2
            ),
            padding: EdgeInsets.all(20),
            itemCount: img.length,
            itemBuilder: (context, index)
            {
              return Image.asset(img[index]);
            },
          )
        )
    );
  }
}
