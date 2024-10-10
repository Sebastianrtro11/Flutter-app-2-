import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  // Singleton para tener una única instancia de la base de datos
  static final DatabaseHelper _instance = DatabaseHelper._internal();

  factory DatabaseHelper() {
    return _instance;
  }

  DatabaseHelper._internal();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'app_database.db');
    return openDatabase(
      path,
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE contador(id INTEGER PRIMARY KEY AUTOINCREMENT, value INTEGER)',
        );
      },
      version: 1,
    );
  }

  // Método para insertar un contador
  Future<void> insertCounter(int value) async {
    final db = await database;
    await db.insert(
      'contador',
      {'value': value},
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // Método para obtener el último valor del contador
  Future<int?> getCounter() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('contador', limit: 1, orderBy: 'id DESC');
    if (maps.isNotEmpty) {
      return maps.first['value'] as int;
    }
    return null;
  }
}
