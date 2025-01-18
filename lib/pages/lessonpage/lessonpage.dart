import 'package:azbukadorog/design/images.dart';
import 'package:flutter/material.dart';
import 'package:azbukadorog/pages/homepage/button.dart';
import '../../design/colors.dart';
import 'package:azbukadorog/main.dart';

class Lessonpage extends StatelessWidget {
  const Lessonpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[_text(context)],);

  }

  Widget _text(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Азбука Дорог', style: TextStyle(
          color: textColor,
        ),),
        leading: IconButton(icon: exitIm, onPressed: () {Navigator.pushNamed(context, '/');},),
        centerTitle: true,
        backgroundColor: primaryColor,

      ),
      body: Container(color: backgroundColor,),
      backgroundColor: backgroundColor,
    );
  }
}

