import 'package:flutter/material.dart';
import 'package:traningforms/helpers/helper_file.dart';
import 'package:traningforms/helpers/urlLanucher.dart';
import 'package:traningforms/model/category.dart';
import 'package:traningforms/model/product.dart';
import 'package:traningforms/radio.dart';
import 'package:traningforms/task.dart';

import 'form_user.dart';
import 'helpers/db_helper.dart';
import 'helpers/sharedpre_helper.dart';

class Home extends StatelessWidget {
  FormUser formuser;
  Home({this.formuser});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Text(formuser.typeUser == TypeUser.customer
            //     ? 'hi i am customer, my email ${formuser.email}, and my password ${formuser.password}'
            //     : 'hi i am mershant, my email ${formuser.email}, and my password ${formuser.password},shop name : ${formuser.shopName},shop address :${formuser.shopAddress} ,bio:${formuser.bio},category : ${formuser.category}'),
            ElevatedButton(
              child: Text('sign out'),
              onPressed: () async {
                //DbHelper.dbhelper.insertCategory(Category(name: 'clothes'));
                DbHelper.dbhelper.getTablesNames();
                // DbHelper.dbhelper.insertCategory(Category(name: 'plays'));
                DbHelper.dbhelper.insertProduct(Product(name: 'A30', catId: 1));
                //   .insertProduct(Product(name: 'apple', catId: 5));
                // TaskModel ff = TaskModel(name: 'coding', isComplete: true);
                //FilesHelper.filesHelper.writeInFile('gsk');
                // FilesHelper.filesHelper.readFormFile('gsk');
                // UrlLauncher.urlLauncher.openWebPage();
                //UrlLauncher.urlLauncher.shareContent();
                //  UrlLauncher.urlLauncher.ex(context);
                // DbHelper.dbhelper.getDatabaseConnection();
                // DbHelper.dbhelper.insertTask(ff);
                // List<TaskModel> tasks = await DbHelper.dbhelper.getAlltask();
                // print(tasks);
                // print(tasks.first.name);
                // TaskModel taskModel =
                //     await DbHelper.dbhelper.getSpecifiedTask(1);
                // print(taskModel.toMap());
                // TaskModel taskModel1 =
                //     TaskModel(id: 1, name: 'programming', isComplete: true);
                // DbHelper.dbhelper.updateTask(taskModel1);
                // TaskModel taskMode2 =
                //     await DbHelper.dbhelper.getSpecifiedTask(1);
                // print(taskMode2.toMap());
                // // SpHelper.spHelper.signOut();
                // print('done remove');

                // Navigator.of(context).pushReplacement(
                //     MaterialPageRoute(builder: (context) => UserForm()));
              },
            ),
          ]),
    );
  }
}
