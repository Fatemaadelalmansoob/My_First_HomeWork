import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // builder: (context, child) => Directionality(textDirection: TextDirection.rtl, child:home()),
      debugShowCheckedModeBanner: false,
      home: home()
    );
  }
}

