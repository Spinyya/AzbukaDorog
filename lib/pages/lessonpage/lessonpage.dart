import 'package:azbukadorog/pages/lessonpage/button.dart';
import 'package:flutter/material.dart';
import '../../design/colors.dart';

class Lessonpage extends StatelessWidget {
  const Lessonpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[_text(context), Align(alignment: Alignment.topLeft , child: _updateButton()), Align(alignment: Alignment.bottomCenter, child: _buttontask(context),),  Align(alignment: Alignment.bottomRight, child: _buttoncam(context),), Align(alignment: Alignment.bottomLeft, child: _buttonbook(context),)] );

  }
  Widget _updateButton() {
    return SafeArea(child: Padding(padding: EdgeInsets.only(top: 10), child: exitbut(),));
  }
  Widget _text(BuildContext context) {
    return ListView( padding: const EdgeInsets.all(0),
      children: <Widget>[
        Container(
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/fon (2).png'), fit: BoxFit.fill)),

        ),
        Container(
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/fon (2).png'), fit: BoxFit.fill)),

        ),
        Container(
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/fon (2).png'), fit: BoxFit.fill)),

        ),



      ],
    );
  }
  Widget _buttontask(BuildContext context) {
    return SafeArea(child: Padding(padding: EdgeInsets.only(bottom: 20, left: 16, right: 16), child: IconButton(onPressed: () {Navigator.pushNamed(context, '/second');}, icon: Icon(Icons.task_alt, color: primaryColor,), iconSize: 50),),);
  }
  Widget _buttoncam(BuildContext context) {
    return SafeArea(child: Padding(padding: EdgeInsets.only(bottom: 20, left: 16, right: 30), child: IconButton(onPressed: () {Navigator.pushNamed(context, '/cam');}, icon: Icon(Icons.camera_alt, color: primaryColor,), iconSize: 50),),);
  }
  Widget _buttonbook(BuildContext context) {
    return SafeArea(child: Padding(padding: EdgeInsets.only(bottom: 20, left: 30, right: 16), child: IconButton(onPressed: () {Navigator.pushNamed(context, '/book');}, icon: Icon(Icons.book, color: primaryColor,), iconSize: 50),),);
  }
}
