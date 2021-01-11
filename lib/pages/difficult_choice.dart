import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:iq_genius/store/counter.dart';
import 'package:provider/provider.dart';

// ignore: use_key_in_widget_constructors
class DifficultChoice extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Personnalisé la partie'),),
      body: const Center(
        child:  Text (' Choix de difficulté' ),



      ),
    );
  }

}