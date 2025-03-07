import 'package:azbukadorog/design/images.dart';
import 'package:azbukadorog/pages/lessonpage/button.dart';
import 'package:flutter/material.dart';
import '../../design/colors.dart';

class Lessonpage extends StatelessWidget {
  const Lessonpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[ _updateButton(), Align(alignment: Alignment.bottomCenter, child: _navigationbar(context),)] );

  }
  Widget _updateButton() {
    return SafeArea(child: Padding(padding: EdgeInsets.only(top: 10), child: exitbut(),));
  }
  Widget _text(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: LinearGradient(colors: <Color>)),
      ),


    );
  }

  Widget _listViewBody() {
    return ListView(
      children: <Widget>[
        Container(

            child: Image.asset('assets/images/fons/fon.png', fit: BoxFit.fill,)

        ),
        Container(

          child: Image.asset('assets/images/fons/fon.png', fit: BoxFit.fill,),

        ),
        Container(
          child: Image.asset('assets/images/fons/fon.png', fit: BoxFit.fill,),
        ),
      ],
    );
  }
  Widget _navigationbar(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: primaryColor, width: 5.0),),
      ),

      child: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: IconButton(onPressed: () {Navigator.pushNamed(context, '/second');}, icon: Icon(Icons.task_alt), iconSize: 35, color: primaryColor), label: "Уроки"),
        BottomNavigationBarItem(icon: IconButton(onPressed: () {Navigator.pushNamed(context, '/camx');}, icon: Icon(Icons.camera_alt), iconSize: 35), label: "ИИ"),
        BottomNavigationBarItem(icon: IconButton(onPressed: () {Navigator.pushNamed(context, '/book');}, icon: Icon(Icons.book), iconSize: 35), label: "Знаки")

      ],




      ),
    );
  }
}
