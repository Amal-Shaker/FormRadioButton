import 'package:flutter/material.dart';
import 'package:traningforms/helpers/sharedpre_helper.dart';
import 'package:traningforms/home.dart';
import 'package:traningforms/radio.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3)).then((value) {
      if (SpHelper.spHelper.getUser() != null) {
        Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (context) {
          return Home(
            formuser: SpHelper.spHelper.getUser(),
          );
        }));
      } else {
        Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (context) {
          return UserForm();
        }));
      }
    });

    return Scaffold();
  }
}
