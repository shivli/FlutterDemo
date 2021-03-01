import 'package:flutter/material.dart';

class UpdateText extends StatefulWidget {
  @override
  _UpdateTextState createState() => _UpdateTextState();
}

class _UpdateTextState extends State<UpdateText> {
  int counter = 0;
  UpdateCounter(){
    this.setState(() {
      counter +=1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo'),
      ),
      body: Container(
        child: Column(
          children: [
            Text("new screen"),
            Text('$counter'),
            FlatButton(
                onPressed: ()=>UpdateCounter(),
                child: Text('update'))
          ],
        ),
      ),
    );
  }
}
