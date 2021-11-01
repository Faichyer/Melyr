import 'package:flutter/material.dart';
import 'constant.dart';

class UnderStick extends StatelessWidget {
  const UnderStick({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: size.height * 0.01),
        child: Container(
          decoration: BoxDecoration(
              color: kSecondaryColor,
              borderRadius: BorderRadius.all(Radius.circular(16.0))),
          width: size.width * 0.6,
          height: 5,
        ),
      ),
    );
  }
}
