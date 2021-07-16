import 'package:flutter/material.dart';
import 'package:traningforms/form_user.dart';
import 'package:traningforms/home.dart';
import 'package:traningforms/radio.dart';
import 'package:traningforms/splashScreen.dart';

import 'helpers/sharedpre_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SpHelper.spHelper.initSharedPrefernces();

  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: SplashScreen()));
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     if (SpHelper.spHelper.getEmail() != null) {
//       return UserForm();
//     } else {
//       return Home(FormUser.customer(
//           email: SpHelper.spHelper.getEmail(),
//           password: SpHelper.spHelper.getPassword()));
//     }
//   }
// }
