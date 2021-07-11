import 'package:flutter/material.dart';

TextDecoration textDeco = TextDecoration.none;

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool? isChecked = false;

  // void checkboxCallback (bool? checkboxState) {
  //   setState(() {
  //     isChecked = checkboxState;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('This is a task',
          style: TextStyle(
              color: Colors.black,
              decoration:
                  (isChecked == true) ? TextDecoration.lineThrough : null)),
      trailing: TaskCheckBox(
        checkBoxState: isChecked,
        toggleCheckboxState: (bool? checkboxState) {
          setState(() {
            isChecked = checkboxState;
          });
        },
      ),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool? checkBoxState;
  final Function(bool?)? toggleCheckboxState;

  TaskCheckBox({this.checkBoxState, this.toggleCheckboxState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkBoxState,
      onChanged: toggleCheckboxState,
    );
  }
}
