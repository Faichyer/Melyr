import 'package:flutter/material.dart';
import 'package:melyr/shared/constant.dart';

class SignUpBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Sign Up',
            style: TextStyle(
              fontFamily: 'Comfortaa',
              fontSize: 36,
              color: kSecondaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
