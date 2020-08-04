import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final onPressed;
  final onChanged;
  AddTaskScreen({this.onPressed, this.onChanged});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 25.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30.0,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: onChanged,
            ),
            FlatButton(
              color: Colors.lightBlueAccent,
              onPressed: onPressed,
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
