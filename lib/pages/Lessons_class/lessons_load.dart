import 'dart:io';

import 'package:csv/csv.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
read(id) async {
  final file = File('pages/Lessons_class/material.csv');
  final contents = await file.readAsString();

  List<List<dynamic>> csvTable = const CsvToListConverter().convert(contents);

  if (csvTable.length > 1) {
    List<dynamic> secondRow = csvTable[id];
    return secondRow;
  } else {
    print('Файл не содержит достаточное количество строк.');
  }
}


class lessons extends StatelessWidget {
  final int number;

  const lessons({super.key, required this.number});
  @override
  Widget build(BuildContext context){
    var pon = read(number);
    return Scaffold(
        appBar: AppBar(
          title: pon[1],
        ),
    );
  }

}

