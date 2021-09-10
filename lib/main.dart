import 'package:flutter/material.dart';
import 'package:to_do/changeNotifiers.dart';
import 'package:to_do/screens/task_screen.dart';
import 'package:to_do/test.dart';
import 'package:provider/provider.dart';

void main() => runApp(
  MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Data()),
      ],
    child: MyApp(),
  )
);

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: TasksScreen(),
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: Text(Provider.of<Data1>(context).myList.length.toString()),
      //     centerTitle: true,
      //   ),
      //   body: Column(
      //     children: [
      //       Level1(),
      //       SizedBox(height: 30.0,),
      //       Text(Provider.of<Data1>(context).myList.last, style: TextStyle(fontSize: 50.0),)
      //     ],
      //   ),
      // ),
    );
  }
}


