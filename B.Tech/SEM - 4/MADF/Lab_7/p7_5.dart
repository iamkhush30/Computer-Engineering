import 'package:flutter/material.dart';

class p7_5 extends StatefulWidget {
  p7_5({super.key});

  @override
  State<p7_5> createState() => _p7_5State();
}

class _p7_5State extends State<p7_5> {
  TextEditingController content = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
            child: Column(
              children: [
                TextFormField(
                  controller: content,
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {});
                    },
                    child: const Text("Print")
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(content.text.toString())
              ],
            )),
      ),
    );
  }
}
