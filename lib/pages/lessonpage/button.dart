import 'package:azbukadorog/design/colors.dart';
import 'package:azbukadorog/design/images.dart';
import 'package:flutter/material.dart';

class exitbut extends StatefulWidget {
  const exitbut({super.key});

  @override
  State<exitbut> createState() => _buttonState();
}

class _buttonState extends State<exitbut> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {Navigator.pushNamed(context, '/');},
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        minimumSize: const Size(80, 80),
        maximumSize: const Size(80, 80),
        elevation: 0,
      ),

      child: exitIm,

      );

  }
}