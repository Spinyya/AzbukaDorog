import 'package:azbukadorog/pages/lessonpage/button.dart';
import 'package:flutter/material.dart';
import '../../design/colors.dart';

class Lessonpage extends StatelessWidget {
  const Lessonpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[_text(context), Align(alignment: Alignment.bottomCenter , child: _updateButton())] );

  }
  Widget _updateButton() {
    return exitbut();
  }
  Widget _text(BuildContext context) {
    return Scaffold(
      body:
      Stack( children: <Widget>[
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/fon (2).png'), fit: BoxFit.cover,),),
          ),
        ),
        ],
      )
    );
  }
}

