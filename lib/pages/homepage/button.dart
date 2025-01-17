import 'package:azbukadorog/design/colors.dart';
import 'package:azbukadorog/pages/lessonpage/lessonpage.dart';
import 'package:flutter/material.dart';

class button extends StatefulWidget {
  final String title;
  const button({super.key, required this.title});

  @override
  State<button> createState() => _buttonState();
}

class _buttonState extends State<button> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {Navigator.pushNamed(context, '/second');},
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          minimumSize: const Size(300, 60),
          maximumSize: const Size.fromHeight(60),
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
        ),
        child: Text(widget.title,style: const TextStyle(
          color: textColor,

        ),),);

  }
}