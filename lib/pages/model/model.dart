import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:pytorch_lite/pytorch_lite.dart';
Future<void> load_model() async {
  ClassificationModel classificationModel= await PytorchLite.loadClassificationModel(
      "assets/best.pt", 224, 224, 41, labelPath: "assets/classesname.txt");
  String imagePrediction = await classificationModel.getImagePrediction(await File('assets/test7.jpg').readAsBytes());

}
