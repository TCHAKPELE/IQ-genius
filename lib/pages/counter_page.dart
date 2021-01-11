import 'package:flutter/material.dart';
import 'package:iq_genius/store/counter.dart';
import 'package:provider/provider.dart';



class CounterPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final counter = Provider.of<Counter>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Counter_page'),

      ),




    );

  }



}