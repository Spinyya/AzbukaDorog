import 'package:azbukadorog/design/images.dart';
import 'package:flutter/material.dart';
import '../../design/colors.dart';

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

        centerTitle: true,
        backgroundColor: primaryColor,

      ),
      body: Container(color: backgroundColor,),
      backgroundColor: backgroundColor,
    );
  }
}

