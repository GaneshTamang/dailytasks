part of bookcard;

// import 'package:local_database/models/note_model.dart';
// import 'package:sqflite/sqflite.dart';

//create clas serv and with version and db name
//onfuture create class database  create function getref opendatabase with join get databasepath, on filename

class MyDatabaseHelperServ {
  //version db file declared
  static const int _version = 1;
  static const String _dbName = "Notes.db";
//get  service of opening database method
//refrenced with Sql query lang with db and
  static Future<Database> myGetDataServRefrence() async {
    //sqflite package help get/set Database
    //and path provider for joining join  opening database and joining database path with file name,oncreate query create table
    //add fuction (datamodel class parameter)
    //get refrence with temp db then  return

    return openDatabase(join(await getDatabasesPath(), _dbName),
        //oncreate funtion call qurery language to create table Book
        onCreate: (mydb, version) async => await mydb.execute('''
           CREATE TABLE Book(id INTEGER PRIMARY KEY, 
           title TEXT NOT NULL,
           author TEXT NOT NULL,
           price FLOAT NOT NULL);'''),
        version: _version);
  }

  static Future<int> myaddBookFunc(BookDataModel pasedtempbookmodedata) async {
    //first link and operate on link insert
    final mytempDbToLink = await myGetDataServRefrence();
    //here table Name book Refrenced for query
    //issert (onbook,passed datamodel.tojson,action conflictalgoritm:replace means addor update)
    return await mytempDbToLink.insert(
        "Book", pasedtempbookmodedata.mytoJsonistosend(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

//update service
  static Future<int> updateBook(BookDataModel tempbookmodedata) async {
    final myLinkedDB = await myGetDataServRefrence();
    //here on linked db fromfile update (book,tempdatatojson)
    return await myLinkedDB.update("Book", tempbookmodedata.mytoJsonistosend(),
        //where to condition with id and replace at postion id
        where: 'id = ?',
        //defenitions of  datd id with link arguments
        whereArgs: [tempbookmodedata.bookmodelid],
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

//delete service refrencing
  static Future<int> deleteBook(BookDataModel tempbookmodedata) async {
    final db = await myGetDataServRefrence();
    return await db.delete(
      "Book",
      where: 'id = ?',
      //linked with both app and json and deleted
      whereArgs: [tempbookmodedata.bookmodelid],
    );
  }

//listtable with each row
//in future book datamodel nullable data
  static Future<List<BookDataModel>?> mygetAllBooks() async {
    final db = await myGetDataServRefrence();

    final List<Map<String, dynamic>> mymap = await db.query("Book");

    if (mymap.isEmpty) {
      return null;
    }

    return List.generate(mymap.length,
        (index) => BookDataModel.myfromJsonisrecieve(mymap[index]));
  }
}
//here generate,update, and on future database class open datadabse(wait and join with filename)
