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
    '/': (context) => HomePage(), // Главная страница
    '/second': (context) => Lessonpage(), // Вторая страница
    },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: const HomePage (),
    );
  }

}