import 'package:flutter_bottomnavigation/model/person.dart';
import 'package:flutter_bottomnavigation/provider/sqliteprovider.dart';



import 'package:sqflite/sqlite_api.dart';

class PersonDataAccess {
  Future<List<Person>> getAll() async {
    
    final db = await DatabaseProvider.db.database;
    var response = await db.query("Person");
    List<Person> list = response.map((e) => Person.fromMap(e)).toList();
    return list;  
  }

  Future<Person?> getById(int id) async {
    final db = await DatabaseProvider.db.database;
    var response = await db.query("Person", where: "id = ?", whereArgs: [id]);
    return response.isNotEmpty ? Person.fromMap(response.first) : null;
  }

  insert(Person person) async {
    final db = await DatabaseProvider.db.database;
    var response = await db.insert("Person", person.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);
    return response;
  }

  update(Person person) async {
    final db = await DatabaseProvider.db.database;
    var response = await db.update("Person", person.toMap(),
        where: "id = ?", whereArgs: [person.id]);
    return response;
  }

  delete(int id) async {
    final db = await DatabaseProvider.db.database;
    var response = await db.delete("Person", where: "id = ?", whereArgs: [id]);
    return response;
  }

  deleteAll() async {
    final db = await DatabaseProvider.db.database;
    var response = await db.delete("Person");
    return response;
  }
}
