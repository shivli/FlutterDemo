import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'firstScreen.dart';
import 'forgot.dart';

class Login extends StatelessWidget {
  String userName;
  String pasword;
  loginPress(BuildContext context) async {
    var url =
        'https://flutterdemo-cc724-default-rtdb.firebaseio.com/flutter/auth.json';
    var response = await http.get(url);
    var jsonResponse = convert.jsonDecode(response.body);
    if (userName == jsonResponse['username'] &&
        pasword == jsonResponse['password']) {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
        return firstScreen();
      }));
    } else {
      showDialog(
          context: context,
          builder: (_) => AlertDialog(
                title: Text("Wrong Credentials"),
              ));
    }
  }
  forgotPress(BuildContext context){
  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
        return ForgotPass();
      }));
  }

  onchangeText(String text, int type) {
    type == 1 ? userName = text : pasword = text;
    print(text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Container(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Username'),
              onChanged: (text) => onchangeText(text, 1),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Password'),
              onChanged: (text) => onchangeText(text, 2),
            ),
            FlatButton(
              onPressed: () => loginPress(context),
              child: Text("login"),
            ),
            FlatButton(
              onPressed: () => forgotPress(context),
              child: Text("Forgot Password"),
            ),
          ],
        ),
      ),
    );
  }
}
