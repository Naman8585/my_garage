

import 'package:assignment/screens/constant.dart';
import 'package:flutter/material.dart';

void main () {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.grey,
      debugShowCheckedModeBanner: false,
      title: "My Garage",
      home: HomeScreen(),
    );
  }
}

