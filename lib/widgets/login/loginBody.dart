import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginBody extends StatelessWidget {
  String httpResponse = '';

  var url = Uri.https('melyr.herokuapp.com', '/users');

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('Log in'),
        FlatButton(
          child: Text("Connect"),
          onPressed: () async {
            var response = await http.get(url);
            if (response.statusCode == 200) {
              httpResponse = response.body;
              print('Response body: ${response.body}.');
            } else {
              print('Request failed with status: ${response.statusCode}.');
            }
          },
        ),
        Text(httpResponse)
      ],
    );
  }
}
