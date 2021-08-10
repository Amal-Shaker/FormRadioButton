import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:traningforms/form_user.dart';
import 'package:traningforms/helpers/db_helper.dart';
import 'package:traningforms/home.dart';
import 'package:traningforms/providerclass.dart';
import 'package:traningforms/radio.dart';
import 'package:traningforms/splashScreen.dart';

import 'helpers/db_helper.dart';
import 'helpers/sharedpre_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await DbHelper.dbhelper.initDatabase();
  await SpHelper.spHelper.initSharedPrefernces();

  // runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Home()));
  runApp(ChangeNotifierProvider<TOdoProvider>(
    create: (context) => TOdoProvider(),
    child: MaterialApp(debugShowCheckedModeBanner: false, home: MyHome()),
  ));
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider'),
      ),
      body: Column(
        children: [
          Text(Provider.of<TOdoProvider>(context).name),
          ElevatedButton(
              onPressed: () {
                Provider.of<TOdoProvider>(context, listen: false)
                    .changeNam('amina');

                // print(Provider.of<TOdoProvider>(context, listen: false).name);
              },
              child: Text('change'))
        ],
      ),
    );
  }
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
