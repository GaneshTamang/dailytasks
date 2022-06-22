// import 'package:local_database/models/note_model.dart';
// import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:local_database/models/book_datamodel.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  //version db file declared
  static const int _version = 1;
  static const String _dbName = "Notes.db";
//get  service of opening database method
//refrenced with Sql query lang with db and
  static Future<Database> _getDBserv() async {
    return openDatabase(join(await getDatabasesPath(), _dbName),
        //oncreate qurery language qued to create table Book
        onCreate: (db, version) async => await db.execute('''
           CREATE TABLE Book(id INTEGER PRIMARY KEY, 
           title TEXT NOT NULL,
           author TEXT NOT NULL,
           category TEXT NOT NULL,
           price FLOAT NOT NULL);'''),
        version: _version);
  }

  static Future<int> addBook(BookDataModel bookmodeldata) async {
    //first link
    final db = await _getDBserv();
    //here table Name book Refrenced for query
    return await db.insert("Book", bookmodeldata.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

//update
  static Future<int> updateBook(BookDataModel bookmodeldata) async {
    final db = await _getDBserv();
    return await db.update("Book", bookmodeldata.toJson(),
        //where to to put id
        where: 'id = ?',
        //defenitions of  datd id with link arguments
        whereArgs: [bookmodeldata.bookmodelid],
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

//delete
  static Future<int> deleteBook(BookDataModel bookmodeldata) async {
    final db = await _getDBserv();
    return await db.delete(
      "Book",
      where: 'id = ?',
      whereArgs: [bookmodeldata.bookmodelid],
    );
  }

//listtable with each row
//in future book datamodel nullable data
  static Future<List<BookDataModel>?> getAllBooks() async {
    final db = await _getDBserv();

    final List<Map<String, dynamic>> maps = await db.query("Book");

    if (maps.isEmpty) {
      return null;
    }

    return List.generate(
        maps.length, (index) => BookDataModel.fromJson(maps[index]));
  }
}
