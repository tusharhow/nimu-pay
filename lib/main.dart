import 'package:flutter/material.dart';
import 'package:nimu_pay/constants.dart';
import 'package:nimu_pay/pages/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        canvasColor: bgColor,
      ),
      home: HomePage(),
    );
  }
}

