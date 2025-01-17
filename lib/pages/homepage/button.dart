import 'package:azbukadorog/design/colors.dart';
import 'package:azbukadorog/pages/lessonpage/lessonpage.dart';
import 'package:flutter/material.dart';

class button extends StatelessWidget {
  final String routeName;
  final String title;
  final Function() onTap;
  const button({super.key, required this.title, required this.onTap, required this.routeName});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onTap, onLongPress: () {
      Navigator.pushNamed(context, routeName);},
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          minimumSize: const Size(300, 60),
          maximumSize: const Size.fromHeight(60),
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
        ),
        child: Text(title,style: const TextStyle(
          color: textColor,

        ),),);

  }

}