import 'package:flutter/material.dart';
import 'updateTextScreen.dart';

// ignore: camel_case_types
class detail extends StatelessWidget {
  final String information;
  detail({this.information});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter widgets'),
      ),
      body: Container(
        child: Column(
          children: [
            Text(information),
            FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UpdateText()),
                  );
                },
                child: Text('Buy'))
          ],
        ),
      ),
    );
  }
}
