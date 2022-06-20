//get application =doocuments creating db aplllicatiosns etc
import 'package:bookstore/models/bookmodel.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
//provide join services and paths for db
import 'package:path/path.dart';
import 'dart:io';
//provides directory

class DatabaseHelper {
  //const created
  DatabaseHelper._privateconstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateconstructor();

  static Database? _database;
  //if database doesnt exist thean intialize below database

  Future<Database> get database async => _database ??= await _initDatabase();
  //creating init database

  Future<Database> _initDatabase() async {
    Directory documentsdirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsdirectory.path, 'books.db');
    //here initialized and opening database
    return await openDatabase(
      path,
      //here on path _initdatabase() create vesion 1 database table
      version: 1,
      //oncreate call _create function
      onCreate: _oncreate,
    );
  }

  Future _oncreate(Database db, int version) async {
    await db.execute('''
CREATE TABLE Book(
  id INTEGER PRIMARY KEY,
  name TEXT

)
  ''');
  } //ended creating table

  Future<List<Books>> getBook() async {
    Database db = await instance.database;
    var books=
  }
}
