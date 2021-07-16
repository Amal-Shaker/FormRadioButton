import 'package:flutter/material.dart';
import 'package:traningforms/home.dart';

import 'custom.dart';
import 'form_user.dart';
import 'helpers/sharedpre_helper.dart';
import 'mershant.dart';

enum TypeUser { customer, mershant }

class UserForm extends StatefulWidget {
  @override
  _UserFormState createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
  TypeUser groupvalue;
  bool choose = true;
  String result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form UI"),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: RadioListTile(
                          title: Text('customer'),
                          value: TypeUser.customer,
                          groupValue: groupvalue,
                          onChanged: (v) {
                            this.groupvalue = v;
                            setState(() {});
                          }),
                    ),
                    Expanded(
                      child: RadioListTile(
                          title: Text('mershant'),
                          value: TypeUser.mershant,
                          groupValue: groupvalue,
                          onChanged: (v) {
                            this.groupvalue = v;
                            setState(() {});
                          }),
                    )
                  ],
                ),
                this.groupvalue == TypeUser.customer
                    ? CustomType()
                    : MershantType(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
