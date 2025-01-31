import 'package:azbukadorog/pages/camerapage/camerapage.dart';
import 'package:flutter/material.dart';
import 'pages/homepage/homepage.dart';
import 'pages/lessonpage/lessonpage.dart';

void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      title: 'Азбука Дорог',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(), // Главная страница
        '/second': (context) => const Lessonpage(), // Вторая страница
        '/cam': (context) => const CameraApp(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
    );
  }


}