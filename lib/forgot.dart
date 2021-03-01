import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class ForgotPass extends StatelessWidget {
  String newPass;
  forgotPress() async {
    var url =
        'https://flutterdemo-cc724-default-rtdb.firebaseio.com/flutter/auth.json';
    var response = await http.patch(url,
        body: convert.jsonEncode({
          "password": newPass,
        }));
    print(response.statusCode);
  }

  onchangeText(text) {
    newPass = text;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forgot Credentials '),
      ),
      body: (Container(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Password'),
              onChanged: (text) => onchangeText(text),
            ),
            FlatButton(
              onPressed: () => forgotPress(),
              child: Text("change password"),
            ),
          ],
        ),
      )),
    );
  }
}
