import 'package:traningforms/helpers/db_helper.dart';

class Category {
  int id;
  String name;

  Category({this.name});

  toMap() {
    return {DbHelper.categoryName: this.name};
  }

  Category.fromMap(Map map) {
    this.name = map[DbHelper.categoryName];
  }
}
