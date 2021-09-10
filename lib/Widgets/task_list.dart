import 'package:flutter/material.dart';
import 'package:to_do/Widgets/taks_tile.dart';
import 'package:to_do/Models/taska.dart';
import 'package:to_do/changeNotifiers.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {

  // final List<Task> TaskList;
  // TasksList(this.TaskList);

//   @override
//   _TasksListState createState() => _TasksListState();
// }
//
// class _TasksListState extends State<TasksList> {
  // List<Task> TaskList  = [
  //   Task(title: "Buy milk",),
  //   Task(title: "buy lap"),
  //   Task(title: "go home"),
  // ];

  @override
  Widget build(BuildContext context) {
    return Consumer<Data>(
        builder: (BuildContext, myTasks, child){
          return ListView.builder(
              itemCount: myTasks.TaskCount,
              itemBuilder: (context, int index) {
                final task = myTasks.Tasks[index];
                return TaskTile(
                  taskTitle: task.title,
                  checkedValue: task.ischecked,
                  callback: (checkboxstate) {
                    myTasks.taskDoneUpdate(task);
                  },
                  onTap: (){
                    myTasks.deleteTask(task);
                  },
                );
              });
        });
  }
}