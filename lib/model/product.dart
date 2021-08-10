import 'package:traningforms/helpers/db_helper.dart';

class Product {
  int id;
  String name;
  int catId;

  Product({this.name, this.catId});

  toMap() {
    return {DbHelper.productName: this.name, DbHelper.productCatId: this.catId};
  }

  Product.fromMap(Map map) {
    this.name = map[DbHelper.productName];
    this.catId = map[DbHelper.productCatId];
  }
}
