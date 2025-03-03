import 'package:azbukadorog/design/images.dart';
import 'package:azbukadorog/pages/lessonpage/button.dart';
import 'package:flutter/material.dart';
import '../../design/colors.dart';

class Lessonpage extends StatelessWidget {
  const Lessonpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[ _listViewBody(), _updateButton(), Align(alignment: Alignment.bottomCenter, child: _navigationbar(context),)] );

  }
  Widget _updateButton() {
    return SafeArea(child: Padding(padding: EdgeInsets.only(top: 10), child: exitbut(),));
  }
  Widget _text(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(items:
         <BottomNavigationBarItem>[
           BottomNavigationBarItem(icon: IconButton(onPressed: () {Navigator.pushNamed(context, '/second');}, icon: Icon(Icons.task_alt, color: Colors.black,), iconSize: 20), label: ""),
           BottomNavigationBarItem(icon: IconButton(onPressed: () {Navigator.pushNamed(context, '/camx');}, icon: Icon(Icons.camera_alt, color: Colors.black), iconSize: 20), label: "ИИ"),
           BottomNavigationBarItem(icon: IconButton(onPressed: () {Navigator.pushNamed(context, '/book');}, icon: Icon(Icons.book, color: Colors.black,), iconSize: 20), label: "Знаки")
         ],
          backgroundColor: backgroundColor,
        ),


    );
  }
  Widget _buttontask(BuildContext context) {
    return SafeArea(child: Padding(padding: EdgeInsets.only(bottom: 20, left: 16, right: 16), child: IconButton(onPressed: () {Navigator.pushNamed(context, '/second');}, icon: Icon(Icons.task_alt, color: Colors.black,), iconSize: 60),),);
  }
  Widget _buttoncam(BuildContext context) {
    return SafeArea(child: Padding(padding: EdgeInsets.only(bottom: 20, left: 16, right: 30), child: IconButton(onPressed: () {Navigator.pushNamed(context, '/camx');}, icon: Icon(Icons.camera_alt, color: Colors.black), iconSize: 60),),);
  }
  Widget _buttonbook(BuildContext context) {
    return SafeArea(child: Padding(padding: EdgeInsets.only(bottom: 20, left: 30, right: 16), child: IconButton(onPressed: () {Navigator.pushNamed(context, '/book');}, icon: Icon(Icons.book, color: Colors.black,), iconSize: 60),),);
  }
  Widget _listViewBody() {
    return ListView(
      children: <Widget>[
        Container(

          child: Image.asset('assets/images/fons/fon.png', fit: BoxFit.fill,),
          

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
    return BottomNavigationBar(items:
    <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: IconButton(onPressed: () {Navigator.pushNamed(context, '/second');}, icon: Icon(Icons.task_alt, color: Colors.black,), iconSize: 35), label: "Уроки"),
      BottomNavigationBarItem(icon: IconButton(onPressed: () {Navigator.pushNamed(context, '/camx');}, icon: Icon(Icons.camera_alt, color: Colors.black), iconSize: 35), label: "ИИ"),
      BottomNavigationBarItem(icon: IconButton(onPressed: () {Navigator.pushNamed(context, '/book');}, icon: Icon(Icons.book, color: Colors.black,), iconSize: 35), label: "Знаки")

    ],
      backgroundColor: primaryColor,
    );
  }

}
