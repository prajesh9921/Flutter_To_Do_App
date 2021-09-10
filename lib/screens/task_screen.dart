import 'package:flutter/material.dart';
import 'package:to_do/Widgets/task_list.dart';
import 'package:to_do/Models/taska.dart';
import 'package:provider/provider.dart';
import 'package:to_do/screens/add_task_screen.dart';
import 'package:to_do/changeNotifiers.dart';

class TasksScreen extends StatelessWidget {
  // List<Task> TaskList = [
  //   Task(title: "Buy milk",),
  //   Task(title: "buy lap"),
  //   Task(title: "go home"),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) => AddTaskScreen(),
            //     AddTaskScreen((newValue){
            //   print(newValue);
            //   // setState(() {
            //   //   TaskList.add(Task(title: newValue));
            //   //   newTaskValue = newValue;
            //   // });
            // }));
          );
        },
        child: Icon(Icons.add, color: Colors.white,),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: 30.0, top: 30.0, right: 50.0, bottom: 50.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30.0,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.list, size: 30.0, color: Colors.lightBlueAccent,),
                  ),
                  SizedBox(height: 10.0,),
                  Text("Todoey", style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 50.0,
                    color: Colors.white,
                  ), ),
                  SizedBox(height: 10.0,),
                  Text("${Provider.of<Data>(context).TaskCount.toString()}Tasks",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white
                    ),),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0 ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0)
                  )
                ),
                child: TasksList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}






