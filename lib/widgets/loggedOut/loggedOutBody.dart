import 'package:flutter/material.dart';
import 'package:melyr/screens/login.dart';
import 'package:melyr/screens/signUp.dart';
import 'package:melyr/shared/constant.dart';
import 'package:melyr/shared/understick.dart';

class LoggedOutBody extends StatelessWidget {
  // Button keys

  static const navigateToLogInButtonKey = Key('navigateToLogIn');
  static const navigateToSignUpButtonKey = Key('navigateToSignUp');

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [kPrimaryColor, kSecondaryColor])),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      "assets/img/logos/logo-square-white-big.png",
                      width: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        'melyr',
                        style: TextStyle(
                            fontFamily: 'Comfortaa',
                            fontSize: 48.0,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
              child: FlatButton(
                key: navigateToLogInButtonKey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: kDefaultPadding * 0.9,
                      horizontal: kDefaultPadding * 2),
                  child: Text(
                    ' Log in '.toUpperCase(),
                    style: TextStyle(
                        color: kPrimaryColor, fontFamily: 'Comfortaa'),
                  ),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    side: BorderSide(color: kPrimaryColor)),
              ),
            ),
            FlatButton(
              key: navigateToSignUpButtonKey,
              color: kPrimaryColor,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: kDefaultPadding, horizontal: kDefaultPadding * 2),
                child: Text(
                  'Register'.toUpperCase(),
                  style:
                      TextStyle(color: Colors.white, fontFamily: 'Comfortaa'),
                ),
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => SignUp()));
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  side: BorderSide(color: kPrimaryColor)),
            )
          ],
        ),
        UnderStick()
      ],
    );
  }
}
