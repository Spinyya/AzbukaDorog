import 'package:azbukadorog/design/colors.dart';
import 'package:azbukadorog/pages/homepage/button.dart';
import 'package:flutter/material.dart';
import 'package:azbukadorog/main.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[_text(), Align(alignment: Alignment.bottomCenter , child: _updateButton())],);

  }

  Widget _updateButton() {
    return SafeArea(child: Padding(padding: EdgeInsets.only(bottom: 100), child:button(title: 'Начать обучение')) ) ;
  }
  Widget _text() {
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