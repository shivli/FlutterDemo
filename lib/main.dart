import 'package:flutter/material.dart';
import 'package:Demo_Flutter/firstScreen.dart';
import 'login.dart';
void main() => runApp(Home());

 

class Home extends StatelessWidget {
 
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Login(),
    );
  }
}
