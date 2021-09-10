import 'package:flutter/material.dart';
import 'package:to_do/changeNotifiers.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {

  //final Function AddTitleCallback;
  String newTitle;

  // AddTaskScreen(this.AddTitleCallback);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(child: Text("Add Task", style: TextStyle(fontSize: 30.0, color: Colors.lightBlueAccent, fontWeight: FontWeight.w600),)),
          SizedBox(height: 10.0,),
          TextField(
            autofocus: true,
            onChanged: (value){
              newTitle = value;
            },
            decoration: InputDecoration(
              hintText: "Add your Task",
            ),
          ),
          SizedBox(height: 20.0,),
          TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent,
                padding: EdgeInsets.all(10.0),
              ),
              onPressed: (){
                //AddTitleCallback(newTitle);
                Provider.of<Data>(context, listen: false).addnewTask(newTitle);
                Navigator.pop(context);
              },
              child: Text("ADD", style: TextStyle(color: Colors.white),)
          )
        ],
      ),
    );
  }
}
