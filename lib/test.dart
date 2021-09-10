import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Level1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Level2()
      ],
    );
  }
}

class Level2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MytextFeild(),
        Level3(),
      ],
    );
  }
}


class Level3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(Provider.of<Data1>(context, listen: true).data);
  }
}

class MytextFeild extends StatefulWidget {
  @override
  _MytextFeildState createState() => _MytextFeildState();
}

class _MytextFeildState extends State<MytextFeild> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: (value){
         Provider.of<Data1>(context, listen: false).ChangedValue(value);
      },
    );
  }
}

class Data1 with ChangeNotifier{
  String data = "hi";

  void ChangedValue(String newValue){
    // data = newValue;
    myList.add(newValue);
    notifyListeners();
  }

  List<String> myList = [
    "Milk", "Oranges", "Apple"
  ];
}



