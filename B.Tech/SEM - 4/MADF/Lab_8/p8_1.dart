import 'package:flutter/material.dart';

class p8_1 extends StatelessWidget {
  const p8_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset("../assets/img.jpg"),
            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqGK3diR3Zi-mnOXEaj-3ewmFyRYVxGzVzZw&s",),
          ],
        ),
      ),
    );
  }
}
