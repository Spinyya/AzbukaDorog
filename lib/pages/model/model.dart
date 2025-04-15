import 'dart:io';
import 'package:pytorch_lite/pytorch_lite.dart';
import '../../database/database_znaki.dart';

Future loadModel() async {
  String pathImageModel = "assets/best.pt";
  ClassificationModel imageModel = await PytorchLite.loadClassificationModel(
      pathImageModel, 224, 224, 41,
      labelPath: "assets/classesname.txt");
  String imagePrediction = await imageModel.getImagePrediction(await File('assets/test7.jpg').readAsBytes());
  print(imagePrediction);
}
void main() {
  loadModel();
}