import 'package:flutter/material.dart';
import 'package:mad/Asg5_class.dart';
import 'package:provider/provider.dart';


class Summary1 extends StatefulWidget {
  const Summary1({super.key});

  @override
  State<Summary1> createState() => _SummaryState();
}


  @override
class _SummaryState extends State<Summary1> {
  //final TextEditingController qTwo = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Summary")),
      body:Center(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        //mainAxisAlignment: MainAxisAlignment.center, 
        children: [
        Text('Total score = ${context.watch<Asg5>().mark}'),
        SizedBox(height: 10,),
        ElevatedButton(
            onPressed: () {
              context.read<Asg5>().clear();
              Navigator.popUntil(context, (route) => route.isFirst);
            },
            child: const Text('Restart')),
      ]),
      ) 
      
      
    );
  }
}