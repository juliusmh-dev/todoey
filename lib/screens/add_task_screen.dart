import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Text('Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w500)),
            TextField(
              // maxLength: 30,
              autofocus: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                disabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        width: 3.0, color: Colors.lightBlueAccent)),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        width: 3.0, color: Colors.lightBlueAccent)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        width: 3.0, color: Colors.lightBlueAccent)),
                border: UnderlineInputBorder(
                    borderSide: BorderSide(
                        width: 3.0, color: Colors.lightBlueAccent)),
              ),
            ),
            // SizedBox(height: 20.0),
            TextButton(
              onPressed: (){

              },
              child: Text('Add', style: TextStyle(color: Colors.white, fontSize: 20.0),),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.lightBlueAccent),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
