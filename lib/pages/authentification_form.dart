import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:iq_genius/characterhiveprovider.dart';
import 'package:iq_genius/model/users.dart';




class AuthentificationForm extends StatefulWidget {
  @override
  _AuthentificationFormState createState() => _AuthentificationFormState();

}

class _AuthentificationFormState extends State<AuthentificationForm> {
  final _formKey = GlobalKey<FormState>();
  String _email;
  String _password;


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

              ],
            ),
            RaisedButton(
                child: Text('Connexion'),
                onPressed: () {
                  _formKey.currentState.save();
                  //final connect_User = User(_email,_password);




                })

          ],

        ));
  }
}