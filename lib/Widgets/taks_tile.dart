import 'package:flutter/material.dart';
import 'package:to_do/Models/taska.dart';


class TaskTile extends StatefulWidget {

  final String taskTitle;
  final bool checkedValue;
  final Function callback;
  final List<Task> taskList;
  final Function onTap;
  TaskTile({this.taskTitle, this.checkedValue, this.callback, this.taskList, this.onTap});

  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.taskTitle,
        style: TextStyle(
          decoration: widget.checkedValue ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Checkbox(
            onChanged: widget.callback,
            value: widget.checkedValue,
            activeColor: Colors.lightBlueAccent,
          ),
          IconButton(icon: Icon(Icons.cancel_outlined, color: Colors.grey,),
              onPressed: widget.onTap,
              ),
        ],
      ),
    );
  }
}