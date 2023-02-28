import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mad/Asg5_class.dart';
import 'package:mad/banana.dart';
import 'package:provider/provider.dart';

class year extends StatefulWidget {
  const year({super.key});

  @override
  State<year> createState() => _yearState();
}

class _yearState extends State<year> {
  final TextEditingController qOne = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Question 1")),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center
          //mainAxisAlignment: MainAxisAlignment.center
          ,
          children: [
            Text('What is this year?'),
            TextField(
              controller: qOne,
              decoration: const InputDecoration(
                labelText: 'answer',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  context.read<Asg5>().questionOne(double.parse(qOne.text));
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => ColorBanana())));

                  qOne.clear();
                },
                child: const Text('OK')),
          ]),
    );
  }
}
