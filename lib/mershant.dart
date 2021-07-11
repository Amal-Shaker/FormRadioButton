import 'package:flutter/material.dart';

class MershantType extends StatefulWidget {
  @override
  _MershantTypeState createState() => _MershantTypeState();
}

class _MershantTypeState extends State<MershantType> {
  String email;
  String password;
  String bio;
  String addressShop;

  setEmail(String email) {
    this.email = email;
  }

  setPassword(String password) {
    this.password = password;
  }

  setBio(String bio) {
    this.bio = bio;
  }

  setAddressShop(String addressShop) {
    this.addressShop = addressShop;
  }

  saveForm() {
    formkey.currentState.save();
  }

  List categories = ['Fahion', 'Shoes', 'Electronics'];
  String valuee = 'Fahion';
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
            child: TextFormField(
                onSaved: (String value) {
                  setAddressShop(value);
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)),
                    labelText: 'address shop',
                    fillColor: Colors.blue.withOpacity(0.2),
                    filled: true)),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: TextFormField(
                onSaved: (String value) {
                  setBio(value);
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)),
                    labelText: 'bio',
                    fillColor: Colors.blue.withOpacity(0.2),
                    filled: true)),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            //  height: 40,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.blue.withOpacity(0.2)),
            child: DropdownButton<String>(
                isExpanded: true,
                value: this.valuee,
                onChanged: (v) {
                  setState(() {
                    this.valuee = v;
                  });
                },
                items: categories.map((e) {
                  return DropdownMenuItem<String>(
                    child: Text(e),
                    value: e,
                  );
                }).toList()),
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
                  print(this.addressShop);
                  print(this.bio);
                  print(this.valuee);
                },
                child: Text('save')),
          )
        ],
      ),
    );
  }
}
