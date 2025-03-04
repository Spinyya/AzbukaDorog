import 'dart:io';

import 'package:azbukadorog/design/colors.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pytorch_lite/pytorch_lite.dart';

class TakePictureScreen extends StatefulWidget {
  const TakePictureScreen({
    super.key,
    required this.camera,
  });

  final CameraDescription camera;

  @override
  TakePictureScreenState createState() => TakePictureScreenState();
}

class TakePictureScreenState extends State<TakePictureScreen> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    // To display the current output from the Camera, create a CameraController.
    _controller = CameraController(
      // Get the specified camera.
      widget.camera,
      // Define the resolution to use.
      ResolutionPreset.medium,
    );

    // Initialise the controller.
    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    // Dispose of the controller when the widget is disposed.
    _controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[camera_prewiew(context), Align(alignment: Alignment.bottomCenter, child: button(context),), Align(alignment: Alignment.bottomCenter, child: bottombar(context),)]);
  }

  Widget camera_prewiew(BuildContext context) {
    return Scaffold(

      backgroundColor: backgroundColor,
      body: FutureBuilder<void>(
        future: _initializeControllerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            // If the Future is complete, display the preview.
            return CameraPreview(_controller);
          } else {
            // Otherwise, display a loading indicator.
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),

    );
  }
  Widget bottombar(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: primaryColor, width: 5.0),),
      ),

      child: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: IconButton(onPressed: () {Navigator.pushNamed(context, '/second');}, icon: Icon(Icons.task_alt), iconSize: 35,), label: "Уроки"),
        BottomNavigationBarItem(icon: IconButton(onPressed: () {Navigator.pushNamed(context, '/camx');}, icon: Icon(Icons.camera_alt), iconSize: 35, color: primaryColor,), label: "ИИ"),
        BottomNavigationBarItem(icon: IconButton(onPressed: () {Navigator.pushNamed(context, '/book');}, icon: Icon(Icons.book), iconSize: 35), label: "Знаки")

      ],




      ),
    );
  }
  Widget button(BuildContext context) {
    return SafeArea(child: Padding(padding: EdgeInsets.only(bottom: 180), child:IconButton(
      onPressed: () async {
        // Take the Picture in a try/catch block. If anything goes wrong,
        // catch the error.
        try {
          // Ensure that the camera is initialized.
          await _initializeControllerFuture;
          // Attempt to take a picture and get the file `image`
          // where it was saved.
          final image = await _controller.takePicture();

          if (!mounted) return;
          loadModel(image);
          //await Navigator.of(context).push(MaterialPageRoute(
            //builder: (context) =>
            //    DisplayPictureScreen(imagePath: image.path,),),);
        } catch (e) {
          print(e);
        }
      },
      icon: Icon(Icons.camera_alt),
      iconSize: 50,

    )
    )
    );
  }
}
// A widget that displays the picture taken by the user.
class DisplayPictureScreen extends StatelessWidget{
  final String imagePath;

  const DisplayPictureScreen({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {    return Scaffold(
      appBar: AppBar(title: const Text('Картинка'), backgroundColor: primaryColor,),
      body: Image.file(File(imagePath), fit: BoxFit.fill,)


    );
  
  }
}

Future loadModel(image) async {
  String pathImageModel = "assets/best.pt";
  ClassificationModel imageModel = await PytorchLite.loadClassificationModel(
      pathImageModel, 224, 224, 41,
      labelPath: "assets/classesname.txt");
  String imagePrediction = await imageModel.getImagePrediction(await File(image.path).readAsBytes());
  return imagePrediction;
}
