import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class p7_4 extends StatelessWidget {
  p7_4({super.key});

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: name,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    onPressed: () {
                      print("Content of TextFormField : ${name.text.toString()}");
                    },
                    child: const Text("Print")
                )
              ],
            )),
      ),
    );
  }
}
