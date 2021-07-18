import 'package:flutter/material.dart';
import 'dart:math' as math;

AppBar buildJustReturnAppBar(Function press) {
  return AppBar(
    leading: Padding(
      padding: const EdgeInsets.all(10.0),
      child: IconButton(
        icon: Transform(
          alignment: Alignment.center,
          transform: Matrix4.rotationY(math.pi),
          child: Icon(Icons.arrow_back),
        ),
        onPressed: press,
      ),
    ),
    backgroundColor: Colors.white,
    brightness: Brightness.light,
    elevation: 0.0,
  );
}
