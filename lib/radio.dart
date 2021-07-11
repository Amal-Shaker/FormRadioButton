import 'package:flutter/material.dart';

import 'custom.dart';
import 'mershant.dart';

enum TypeUser { customer, mershant }

class UserForm extends StatefulWidget {
  @override
  _UserFormState createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
  TypeUser groupvalue;
  bool choose = true;
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
                            setState(() {
                              choose = false;
                            });
                          }),
                    ),
                    Expanded(
                      child: RadioListTile(
                          title: Text('mershant'),
                          value: TypeUser.mershant,
                          groupValue: groupvalue,
                          onChanged: (v) {
                            this.groupvalue = v;
                            setState(() {
                              choose = true;
                            });
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
