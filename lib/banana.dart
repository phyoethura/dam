import 'package:flutter/material.dart';
import 'package:mad/Asg5_class.dart';
import 'package:mad/Summary.dart';
import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';

class ColorBanana extends StatefulWidget {
  const ColorBanana({super.key});

  @override
  State<ColorBanana> createState() => _ColorState();
}

class _ColorState extends State<ColorBanana> {
  final TextEditingController qTwo = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Question 2")),
      body: Column(crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('What is the color of Banana?'),
            TextField(
              controller: qTwo,
              decoration: const InputDecoration(
                labelText: 'answer',
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(
                onPressed: () {
                  context.read<Asg5>().questionTwo(qTwo.text);
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => Summary1())));
                  qTwo.clear();
                },
                child: const Text('OK')),
          ]),
    );
  }
}
