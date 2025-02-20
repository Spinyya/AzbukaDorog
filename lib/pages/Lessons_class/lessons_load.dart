import "package:sqflite/sqflite.dart";
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

class DBProvider {
  static final DBProvider db = DBProvider();
  Database? _database;

  Future<Database> get database async{
    if (_database != null) return _database!;
    _database = await initDB();
  }
  initDB() async {

  }
}
