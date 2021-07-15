import 'package:flutter/cupertino.dart';
import 'package:traningforms/radio.dart';

class FormUser {
  TypeUser typeUser;
  String email;
  String password;
  String bio;
  String category;
  String shopAddress;
  String shopName;
  FormUser.customer(
      {@required this.email,
      @required this.password,
      this.typeUser = TypeUser.customer});
  FormUser.mershant(
      {@required this.email,
      @required this.password,
      @required this.bio,
      @required this.shopAddress,
      @required this.shopName,
      @required this.category,
      this.typeUser = TypeUser.mershant});
}
