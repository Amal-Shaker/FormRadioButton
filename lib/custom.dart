import 'package:flutter/material.dart';

class CustomType extends StatefulWidget {
  @override
  _CustomTypeState createState() => _CustomTypeState();
}

class _CustomTypeState extends State<CustomType> {
  String email;
  String password;
  setEmail(String email) {
    this.email = email;
  }

  setPassword(String password) {
    this.password = password;
  }

  saveForm() {
    formkey.currentState.save();
  }

  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: TextFormField(
                onSaved: (String value) {
                  setEmail(value);
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)),
                    labelText: 'Email',
                    fillColor: Colors.blue.withOpacity(0.2),
                    filled: true)),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: TextFormField(
                onSaved: (String value) {
                  setPassword(value);
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)),
                    labelText: 'password',
                    fillColor: Colors.blue.withOpacity(0.2),
                    filled: true)),
          ),
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(10),
            height: 60,
            width: MediaQuery.of(context).size.width,
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    saveForm();
                  });
                  print(this.email);
                  print(this.password);
                },
                child: Text('save')),
          )
        ],
      ),
    );
  }
}
