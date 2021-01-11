import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:iq_genius/characterhiveprovider.dart';
import 'package:iq_genius/model/users.dart';
import 'package:iq_genius/store/repo.dart';


class NewUsersForm extends StatefulWidget {
  @override
  _NewUsersFormState createState() => _NewUsersFormState();

}

class _NewUsersFormState extends State<NewUsersForm> {
  final _formKey = GlobalKey<FormState>();
  String _email;
  String _password;
  String _pseudo;


  @override
  void initState(){
    super.initState();
    CharacterHiveProvider.create();

  }


  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(labelText: 'Email'),
                      onSaved: (value) => _email = value,
                    )),
                const SizedBox(width: 10),
                Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(labelText: 'Password'),
                      onSaved: (value) => _password = value,
                    )),
                Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(labelText: 'Pseudo'),
                      onSaved: (value) => _pseudo = value,
                    )),

              ],
            ),
            RaisedButton(
                child: Text('Add new player'),
                onPressed: () {
                  _formKey.currentState.save();
                  final newUser = User(_email,_password,_pseudo);
                  Box<User> _box;
                  // ignore: cascade_invocations
                  _box.add(newUser);



                })

          ],

        ));
  }
}