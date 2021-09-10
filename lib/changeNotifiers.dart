import 'dart:collection';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:to_do/Models/taska.dart';
import 'package:to_do/Widgets/task_list.dart';

class Data with ChangeNotifier{

  String newTask;

  // Underscore before TaskList makes it private to this class only and cannot be used outside
  List<Task> _TaskList = [
    Task(title: "Buy milk",),
    Task(title: "buy lap"),
    Task(title: "go home"),
  ];

  // Using UnmodifiableListView you can only view the list but cannot modify it.
  UnmodifiableListView<Task> get Tasks{
    return UnmodifiableListView(_TaskList);
  }

  void addnewTask (String newTask){
    _TaskList.add(Task(title: newTask));
    notifyListeners();
  }

  void taskDoneUpdate(Task task){
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task tasktodelete){
    _TaskList.remove(tasktodelete);
    notifyListeners();
  }

  int get TaskCount{
    return _TaskList.length;
  }
}