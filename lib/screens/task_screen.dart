import 'dart:ffi';

import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  final List myTaskList = ['Apfel', 'Birne', 'Banane'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add, size: 40.0),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
                top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Icon(Icons.list,
                      size: 30.0, color: Colors.lightBlueAccent),
                  backgroundColor: Colors.white,
                  radius: 30.0,
                ),
                SizedBox(height: 10.0),
                Text('Todoey',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50.0,
                        fontWeight: FontWeight.w700)),
                Text('12 Tasks',
                    style: TextStyle(color: Colors.white, fontSize: 18.0)),
              ],
            ),
          ),
          Expanded(
            child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
              height: 300.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0))),
              child: TasksList(myTaskList: myTaskList),
            ),
          ),
        ],
      ),
    );
  }
}

class TasksList extends StatelessWidget {
  const TasksList({
    Key? key,
    required this.myTaskList,
  }) : super(key: key);

  final List myTaskList;

  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      for (var myTask in myTaskList)
        ListTile(
            title: Text('$myTask',
                style: TextStyle(color: Colors.black)),
            trailing: Checkbox(
              value: false,
              onChanged: null,
            )),
    ]);
  }
}
