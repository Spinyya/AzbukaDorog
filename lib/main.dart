            import 'dart:io';

import 'package:azbukadorog/database/database_znaki.dart';
import 'package:azbukadorog/pages/camerapage/camerapage.dart';
import 'package:flutter/material.dart';
import 'pages/homepage/homepage.dart';
import 'pages/lessonpage/lessonpage.dart';
import 'package:camera/camera.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();

// Obtain a list of the available cameras on the device.
  final cameras = await availableCameras();
  final CameraDescription firstcamera = cameras[0];
  runApp(MaterialApp(

    title: 'Азбука Дорог',
    initialRoute: '/',
    routes: {
      '/': (context) => const HomePage(), // Главная страница
      '/second': (context) => const Lessonpage(), // Вторая страница
      '/camx': (context) => TakePictureScreen(camera: firstcamera),
    },
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        primarySwatch: Colors.blue
    ),
  ),);// Get a specific camera from the list of available cameras.
}

