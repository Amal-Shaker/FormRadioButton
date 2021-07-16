import 'package:flutter/material.dart';
import 'package:traningforms/radio.dart';

import 'form_user.dart';
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
            Text(formuser.typeUser == TypeUser.customer
                ? 'hi i am customer, my email ${formuser.email}, and my password ${formuser.password}'
                : 'hi i am mershant, my email ${formuser.email}, and my password ${formuser.password},shop name : ${formuser.shopName},shop address :${formuser.shopAddress} ,bio:${formuser.bio},category : ${formuser.category}'),
            ElevatedButton(
              child: Text('sign out'),
              onPressed: () {
                SpHelper.spHelper.signOut();
                print('done remove');

                // Navigator.of(context).pushReplacement(
                //     MaterialPageRoute(builder: (context) => UserForm()));
              },
            ),
          ]),
    );
  }
}
