import 'package:flutter/material.dart';


class Task {

  String title;
  bool ischecked;

  Task({this.title, this.ischecked = false});

  void toggleDone(){
    ischecked = !ischecked;
  }
  }