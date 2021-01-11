import 'package:flutter/material.dart';

import 'new_users_form.dart';

class AddAccount extends StatelessWidget{

  const AddAccount({Key key,}): super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Créer un nouveau compte'),),
      body: Column(
        children:<Widget>[
          Expanded(child: _buildListView()),
          NewUsersForm(),

        ]
      ),
    );
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

}