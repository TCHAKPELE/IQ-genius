import 'package:flutter/material.dart';

import 'authentification_form.dart';

// ignore: use_key_in_widget_constructors
class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page d''authentification'),),
      body: Column(
          children:<Widget>[
            Expanded(child: _buildListView()),
            AuthentificationForm(),

          ]
      ),
    );
  }

}

ListView _buildListView(){
  return ListView(
    children: <Widget>[
      ListTile(
        title: Text('Email'),
        subtitle: Text('Password'),
      ),

    ],
  );


}

