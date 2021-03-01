import 'package:flutter/material.dart';
import 'detail.dart';

class Users {
  String name;
  int amount;
  Users({this.name, this.amount});
}

class firstScreen extends StatelessWidget {
  @override
  DetailPress(BuildContext context, name) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return detail(
        information: name,
      );
    }));
  }

  Widget renderRow(name, amount, ctx) {
    return InkWell(
      onTap: () => this.DetailPress(ctx, name),
      child: Container(
          margin: EdgeInsets.all(20),
          height: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blueAccent),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Text(
              name,
            ),
            Text(amount.toString() + ' Units Left'),
            RaisedButton.icon(
                onPressed: () {
                  print("clicked");
                },
                icon: Icon(Icons.add_shopping_cart_outlined),
                label: Text("Details"))
          ])),
    );
  }

  Widget build(BuildContext context) {
    final dummy = [
      Users(name: 'Product 1', amount: 2),
      Users(name: 'Product 2', amount: 7),
      Users(name: 'Product 3', amount: 9),
    ];
    return Container(
      child: Scaffold(
          appBar: AppBar(
            title: Text('Flutter widgets'),
          ),
          body: Container(
            height: double.maxFinite,
            width: double.maxFinite,
            margin: EdgeInsets.all(10),
            child: Column(
              children: dummy
                  .map((data) => renderRow(data.name, data.amount, context))
                  .toList(),
            ),
          )),
    );
  }
}
