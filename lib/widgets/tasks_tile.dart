import 'package:flutter/material.dart';

TextDecoration textDeco = TextDecoration.none;

class TaskTile extends StatelessWidget {

  final bool? isChecked;
  final String? taskTitle;

  TaskTile({this.isChecked, this.taskTitle});

  // void checkboxCallback (bool? checkboxState) {
  //   setState(() {
  //     isChecked = checkboxState;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('$taskTitle',
          style: TextStyle(
              color: Colors.black,
              decoration:
                  (isChecked == true) ? TextDecoration.lineThrough : null)),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
    value: isChecked,
    onChanged: null,
    // onChanged: toggleCheckboxState,
    ),
          );
  }
}

