import 'package:flutter/material.dart';
import 'package:newsapp/screens/Homescreen.dart';

void main() {


  runApp(newsapp());
}

class newsapp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homescreen() ,
    );
  }
}
