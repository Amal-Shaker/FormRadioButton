import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:traningforms/model/category.dart';
import 'package:traningforms/model/product.dart';
import 'package:traningforms/task.dart';

class DbHelper {
  DbHelper._();
  static DbHelper dbhelper = DbHelper._();
  static final String dbname = 'taskDb.db';
  static final String dbtablename = 'Tasks';
  static final String dbcolumnName = 'name';
  static final String dbColumnIsComplete = 'iscomplete';
  static final String dbColumnId = 'id';

  static final String dbName = 'ecommercee.db';

  static final String productTableName = 'product';
  static final String productId = 'id';

  static final String productName = 'name';
  static final String productCatId = 'catId';

  static final String categoryTableName = 'category';
  static final String categoryName = 'name';
  static final String categoryId = 'id';

  Database database;
  initDatabase() async {
    database = await getDatabaseConnection();
  }

  Future<Database> getDatabaseConnection() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + '$dbName';
    Database database = await openDatabase(
      path,
      version: 1,
      onConfigure: (db) {
        db.execute('PRAGMA foreign_keys=ON');
      },
      onCreate: (db, v) {
        db.execute(
            '''CREATE TABLE $productTableName ($productId INTEGER PRIMARY KEY AUTOINCREMENT,
            $productName TEXT,
             $productCatId INTEGER, 
             FOREIGN KEY ($productCatId) REFERENCES $categoryTableName($categoryId) ON DELETE CASCADE
             )''');
        print('product is create');
        db.execute(
            '''CREATE TABLE $categoryTableName ($categoryId INTEGER PRIMARY KEY AUTOINCREMENT,
            $categoryName TEXT
         
             )''');
        print('category is create');

        // db.execute(
        //     '''CREATE TABLE Tasks (id INTEGER PRIMARY KEY AUTOINCREMENT , name TEXT, iscomplete INTEGER)''');
        // print('DB is created');
      },
      onOpen: (database) {
        print('DB is opened');
      },
    );
    return database;
  }

  // deleteProduct(int id) async {
  //   database.delete(productTableName, where: 'id=?', whereArgs: [id]);
  // }

  // deleteCategory(int id) async {
  //   database.delete(categoryTableName, where: 'id=?', whereArgs: [id]);
  // }

  insertProduct(Product product) async {
    int rawNum = await database.insert(productTableName, product.toMap());
    print(rawNum);
  }

  insertCategory(Category category) async {
    int rawNum = await database.insert(categoryTableName, category.toMap());
    print(rawNum);
  }

  insertTask(TaskModel taskmodel) async {
    int rawNum = await database.insert(dbtablename, taskmodel.toMap());
    print(rawNum);
  }

  Future<List<TaskModel>> getAlltask() async {
    List<Map<String, Object>> result = await database.query(dbtablename);
    List<TaskModel> tasks = result.map((e) {
      return TaskModel.fromMap(e);
    }).toList();
    return tasks;
  }

  Future<TaskModel> getSpecifiedTask(int id) async {
    List<Map<String, dynamic>> results =
        await database.query(dbtablename, where: 'id=?', whereArgs: [id]);
    TaskModel taskModel = TaskModel.fromMap(results.first);
    return taskModel;
  }

  deleteTask(int id) async {
    database.delete(dbtablename, where: 'id=?', whereArgs: [id]);
  }

  updateTask(TaskModel taskModel) async {
    database.update(dbtablename, taskModel.toMap(),
        where: 'id=?', whereArgs: [taskModel.id]);
  }

  getTablesNames() async {
    List<Map<String, Object>> tables = await database
        .query('sqlite_master', where: 'type=?', whereArgs: ['table']);
    List<String> tablesNames = tables.map((e) => e['name'].toString()).toList();
    print(tablesNames);
  }
}
