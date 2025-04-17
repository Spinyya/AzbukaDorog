import 'dart:io';
import 'package:csv/csv.dart';
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
  var pon = read(1);
  print(pon[1]);
}
read(id) async {
  var file = File('material.csv');
  final contents = await file.readAsString();

  List<List<dynamic>> csvTable = const CsvToListConverter().convert(contents);

  if (csvTable.length > 1) {
    List<dynamic> secondRow = csvTable[id];
    sleep(Duration(seconds: 3));
    return secondRow;
  } else {
    print('Файл не содержит достаточное количество строк.');
  }

}