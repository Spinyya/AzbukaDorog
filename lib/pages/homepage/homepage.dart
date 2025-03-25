import 'package:azbukadorog/design/colors.dart';
import 'package:azbukadorog/design/images.dart';
import 'package:azbukadorog/pages/homepage/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[_text(), Align(alignment: Alignment.center , child: _updateButton())],);

  }

  Widget _updateButton() {
    return SafeArea(child: Padding(padding: EdgeInsets.only(bottom: 100, left: 16, right: 16), child:button(title: 'Начать Обучение'),),) ;
  }
  Widget _text() {
    return Scaffold(
      appBar: AppBar(
        title: const Text('АЗБУКА ДОРОГ', style: TextStyle(
            fontWeight: FontWeight.bold,
            color: textColor,
            fontSize: 30,

        ),

        ),
        centerTitle: true,
        backgroundColor: primaryColor,
        automaticallyImplyLeading: false,

      ),
      body: Container(
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/fons/Mainmenu.png'), fit: BoxFit.fill)),
      ),


    );
  }
}