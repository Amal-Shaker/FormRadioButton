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

  Map<String, dynamic> toMap() {
    Map map = this.typeUser == TypeUser.customer
        ? {'isMershant': false, 'email': this.email, 'password': this.password}
        : {
            'isMershant': true,
            'email': this.email,
            'password': this.password,
            'shopAddress': this.shopAddress,
            'shopName': this.shopName,
            'bio': this.bio,
            'category': this.category
          };
    return {...map};
  }

  factory FormUser.map(Map map) {
    if (map['isMershant'] == true) {
      return FormUser.mershant(
          email: map['email'],
          password: map['password'],
          bio: map['bio'],
          shopAddress: map['shopAddress'],
          shopName: map['shopName'],
          category: map['category']);
    } else {
      return FormUser.customer(email: map['email'], password: map['password']);
    }
  }
}
