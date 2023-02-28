import 'dart:developer';
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:mad/Asg5_class.dart';

import 'package:mad/shop.dart';
import 'package:mad/shop2.dart';
import 'package:mad/cart.dart';
import 'package:mad/year.dart';
//import 'package:flutter_application_1/leee.dart';

import 'package:provider/provider.dart';

//void main() {
//runApp(const Center(
// child : Text(
//  'Hello',
//textDirection: TextDirection.ltr,
//style: TextStyle(fontSize: 30,color:Colors.yellow,
//// )
// )
//));
//}
// void main() {
//   runApp(MaterialApp(
//     home : Scaffold(
//       appBar: AppBar(title: Text('My App'),),
//       body: Text('Hello',style : TextStyle(fontSize: 30,color : Colors.red)),
//     ),
//   ));
// }


void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Asg5(),
      child: const MaterialApp(
        home: year(),
        debugShowCheckedModeBanner: false,
      ),
    ),
  );
}