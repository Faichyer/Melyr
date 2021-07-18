import 'package:flutter/material.dart';

import 'package:melyr/shared/justReturnAppBar.dart';
import 'package:melyr/widgets/signup/signupBody.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildJustReturnAppBar(() {
        Navigator.pop(context);
      }),
      body: SignUpBody(),
    );
  }
}
