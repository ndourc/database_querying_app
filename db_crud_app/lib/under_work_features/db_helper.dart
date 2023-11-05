import 'package:db_crud_app/under_work_features/db_conn.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static const int _version = 1;
  static const String _dbName = "MyDatabases.db";

  static Future<Database> _getDB() async {
    return openDatabase(join(await getDatabasesPath(), _dbName),
      onCreate: (db, version) async => await db.execute('''
        CREATE TABLE AvailableDatabases(
        database_id VARCHAR PRIMARY KEY,
        database_name TEXT NOT NULL,
        date_of_creation DATE NOT NULL,
        category TEXT NOT NULL,
        creator TEXT NOT NULL
        );
    '''),
    version: _version
    );
  }

  static Future<int> addDatabase(MyDatabases adatabase) async {
    final db = await _getDB();
    return await db.insert("AvailableDatabases",
    adatabase.toJson(),
    conflictAlgorithm: ConflictAlgorithm.replace
    );
  }

  static Future<int> updateAvailableDatabases(MyDatabases adatabase) async {
    final db = await _getDB();
    return await db.update("AvailableDatabases",
    adatabase.toJson(),
    where: 'database_id = ?',
    whereArgs: [adatabase.database_id],
    conflictAlgorithm: ConflictAlgorithm.replace
    );
  }

    static Future<int> deleteAvailableDatabase(MyDatabases adatabase) async {
    final db = await _getDB();
    return await db.delete("AvailableDatabases",
    where: 'database_id = ?',
    whereArgs: [adatabase.database_id],
    );
  }

  static Future<List<MyDatabases>?> getAllDatabases() async {
    final db = await _getDB();

    final List<Map<String, dynamic>> maps = await db.query("MyDatabases");

    if(maps.isEmpty){
      return null;
    }

    return List.generate(maps.length, (index) => MyDatabases.fromJson(maps[index])
      );
  }
}