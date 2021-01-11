import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../characterhiveprovider.dart';
//part'repo.g.dart';


//class Repo = _Repo with _$Repo;


abstract class _Repo with Store{

  @action
  void addUser(){
    final component = CharacterHiveProvider.create();


  }





}

