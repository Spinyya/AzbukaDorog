import 'dart:io';
import 'package:csv/csv.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
Future<List<List<dynamic>>> loadCsv() async {
  final input = File('lib/database/znaki.csv').openRead();
  final fields = await input
      .transform(utf8.decoder)
      .transform(const CsvToListConverter())
      .toList();
  return fields;
}
List<dynamic>? findRowById(List<List<dynamic>> csvData, String id) {
  for (var row in csvData) {
    if (row[0].toString() == id) { // предполагаем, что id находится в первой колонке
      return row; // возвращаем найденную строку
    }
  }
  return null; // если не найдено
}
read(id) async {
  List<List<dynamic>> csvData = await loadCsv();
  var idtosearch = id;
  List<dynamic>? foundRow = findRowById(csvData, idtosearch);
  return foundRow;
}




class znaki extends StatelessWidget{
  const znaki({super.key, required this.id});
  final id;

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[],);

  }
 Widget app(BuildContext context) {
    var List = read(id);
    return Scaffold(
      appBar: AppBar(title: List[1],),
    );
 }
}
